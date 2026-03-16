from django.shortcuts import render,redirect
from django.db import connection
from datetime import datetime
from django.conf import settings
import os
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
import razorpay



# Create your client here.
def home(request):
    return render(request, "client/home.html")

def login(request):
    if "user" in request.session:
        return redirect("home")
    if request.method=='POST':
        email=request.POST.get("email")
        ps=request.POST.get("password")
    
        with connection.cursor() as cursor:
            q="select * from register where email=%s and password=%s"
            cursor.execute(q,[email,ps])
            data=cursor.fetchone()
            if data:
                request.session["user"]=data[1]
                messages.success(request,"welcome to home page...")
                return redirect("home")
            else:
                messages.success(request,"Login Failed...")
                return redirect("register")
    return render(request, "client/login.html")
        
    
  
def register(request):
    if request.method=='POST':
        nm=request.POST.get("name")
        email=request.POST.get("email")
        mb=request.POST.get("phone")
        ps=request.POST.get("password")
        with connection.cursor() as cursor:
            q="insert into register(name,email,mobile,password) values(%s,%s,%s,%s)"
            cursor.execute(q,[nm,email,mb,ps])
            return redirect("login")
    return render(request, "client/register.html")


def product(request):
    with connection.cursor() as cursor:
        q="select * from product_category"
        cursor.execute(q)
        data=cursor.fetchall()
        
    return render(request, 'client/product.html',{'datas':data})

def cat_details(request, cat):
    with connection.cursor() as cursor:
        q = "SELECT * FROM add_product WHERE category = %s"
        cursor.execute(q, [cat])
        data = cursor.fetchall()

    # Map category to template name
    template_map = {
        "mobile": "mobile.html",
       
    }

    template_name = f"client/{template_map.get(cat.lower(), 'mobile.html')}"

    return render(request, template_name, {
        'datas': data,
        'title': cat.capitalize() + " Product"
    })


def feedback(request):
    if request.method == 'POST':
        name = request.POST.get("name")
        rating = request.POST.get("rating")
        comments = request.POST.get("comments")
        date = request.POST.get("date")
        # product = request.POST.get("product")

        with connection.cursor() as cursor:
            query = """
                INSERT INTO feedback (name, rating, comments, date)
                VALUES (%s, %s, %s, %s)
            """
            cursor.execute(query, [name, rating, comments, date])

        return redirect("thankyou")

    return render(request, 'client/feedback.html')

def thankyou(request):
    return render(request, 'client/thankyou.html')


def contact(request):
    if request.method == 'POST':
       
        first_name = request.POST.get("first_name")
        last_name = request.POST.get("last_name")
        email = request.POST.get("email")
        message = request.POST.get("message")

        with connection.cursor() as cursor:
            cursor.execute(
                """
                INSERT INTO contact (first_name, last_name, email, message)
                VALUES (%s, %s, %s, %s)
                """,
                [first_name, last_name, email, message]
            )

        return redirect("thankyou")  

    return render(request, 'client/contact.html')

def addtocart(request, id):

    user = request.session.get("user")

    if not user:
        return redirect("login")

    with connection.cursor() as cursor:

        cursor.execute(
            "SELECT * FROM add_product WHERE id=%s",
            [id]
        )
        productdata = cursor.fetchone()

        if not productdata:
            return redirect("product")

        prdid = productdata[0]
        prdname = productdata[1]
        prdprice = productdata[4]
        prdimage = productdata[5]

        cursor.execute("""
            INSERT INTO cart (pid, name, price, image, useremail)
            VALUES (%s, %s, %s, %s, %s)
        """, [
            prdid,
            prdname,
            float(prdprice),
            prdimage,
            user
        ])

     # ✅ Get updated cart count from DB
        cursor.execute("""
            SELECT COUNT(*) FROM cart WHERE useremail=%s
        """, [user])

        cart_count = cursor.fetchone()[0]
        print("INSERTING FOR:", cart_count)

    request.session['cart'] = cart_count

    return redirect("cart")

def cart(request):

    # 🔒 Check Login
    if "user" not in request.session:
        return redirect("login")   # fixed redirect

    user = request.session.get("user")

    with connection.cursor() as cursor:
        query = "SELECT * FROM cart WHERE useremail = %s"
        cursor.execute(query, [user])
        data = cursor.fetchall()

    datalist = []
    subtotal = 0

    for row in data:
        try:
            price = float(row[3])
        except:
            price = 0

        subtotal += price

        datalist.append({
            'id': row[0],
            'pid': row[1],
            'name': row[2],
            'price': price,
            'image': row[4]
        })

    tax = round(subtotal * 0.05, 2)
    grand_total = round(subtotal + tax, 2)

    return render(request, "client/cart.html", {
        'cart': datalist,
        'total': subtotal,
        'tax': tax,
        'grand_total': grand_total
    })

def remove_cart(request, id):

    if "user" not in request.session:
        return redirect("login")

    with connection.cursor() as cursor:
        cursor.execute(
            "DELETE FROM cart WHERE id = %s",
            [id]
        )
        # 🔥 Recalculate cart count
        user= request.session.get("user")
        cursor.execute("""
            SELECT COUNT(*) FROM cart WHERE useremail=%s
        """, [user])

        cart_count = cursor.fetchone()[0]

    request.session['cart'] = cart_count

    return redirect("cart")

def checkout(request):

    username = request.session.get("user")

    if not username:
        return redirect("login")

    client = razorpay.Client(auth=(settings.RAZORPAY_KEY_ID, settings.RAZORPAY_KEY_SECRET))

    if request.method == "POST":

        street = request.POST.get('street')
        city = request.POST.get('city')
        state = request.POST.get('state')
        zip_code = request.POST.get('zip')

        payment_method = request.POST.get("payment")
        payment_id = request.POST.get("payment_id")

        with connection.cursor() as cursor:

            cursor.execute(
                "SELECT * FROM cart WHERE useremail = %s",
                [username]
            )
            cart_data = cursor.fetchall()

            if not cart_data:
                messages.error(request, "Cart is empty!")
                return redirect("cart")

            # INSERT ORDERS
            for row in cart_data:
                cursor.execute("""
                    INSERT INTO orders(product, price, user, image)
                    VALUES (%s, %s, %s, %s)
                """, [
                    row[2],
                    row[3],
                    username,
                    row[4],
                ])

            # SAVE ADDRESS
            cursor.execute("""
                INSERT INTO address(name, street, city, state, zip)
                VALUES (%s, %s, %s, %s, %s)
            """, [
                username,
                street,
                city,
                state,
                zip_code
            ])

            # CLEAR CART
            cursor.execute(
                "DELETE FROM cart WHERE useremail = %s",
                [username]
            )

        messages.success(request, "Order Placed Successfully")
        return redirect("home")

    else:

        with connection.cursor() as cursor:

            cursor.execute(
                "SELECT * FROM address WHERE name = %s",
                [username]
            )
            checkout_data = cursor.fetchall()

            cursor.execute(
                "SELECT name, price FROM cart WHERE useremail = %s",
                [username]
            )
            cart_data = cursor.fetchall()

        cart_list = []
        subtotal = 0

        for row in cart_data:
            price = float(row[1]) if row[1] else 0
            subtotal += price

            cart_list.append({
                "name": row[0],
                "price": price
            })

        tax = round(subtotal * 0.05, 2)
        grand_total = round(subtotal + tax, 2)

        amount = int(grand_total * 100)

        payment = client.order.create({
            "amount": amount,
            "currency": "INR",
            "payment_capture": 1
        })

        checkout_list = [
            {
                "id": row[0],
                "name": row[1],
                "street": row[2],
                "city": row[3],
                "state": row[4],
                "zip": row[5]
            }
            for row in checkout_data
        ]

        return render(request, "client/checkout.html", {
            "checkoutdata": checkout_list,
            "user": username,
            "cart": cart_list,
            "total": subtotal,
            "tax": tax,
            "grand_total": grand_total,
            "razorpay_order_id": payment["id"],
            "razorpay_merchant_key": settings.RAZORPAY_KEY_ID,
            "amount": amount,
            "currency": "INR"
        })
        
def home(request):
    faqs = [
        {
            "question": "What warranty do electronic products have?",
            "answer": "Most electronic products come with a 1-year manufacturer warranty."
        },
        {
            "question": "Are all products original?",
            "answer": "Yes, all products sold are 100% original and factory sealed."
        },
        {
            "question": "Do laptops come with Windows installed?",
            "answer": "Yes, laptops come with genuine pre-installed Windows OS."
        },
        {
            "question": "What is the return policy for electronics?",
            "answer": "Replacement is available within 7 days for manufacturing defects only."
        },
        {
            "question": "Is Cash on Delivery available?",
            "answer": "Yes, Cash on Delivery is available on selected electronic products."
        },
        {
            "question": "How long does delivery take?",
            "answer": "Delivery usually takes 3–7 working days depending on your location."
        },
    ]

    return render(request, "client/home.html", {
        "faqs": faqs
    })

def logout(request):
    request.session.flush()   
    messages.success(request, "Logout successfully...")
    return redirect("login")























# Create your admin here.
 
def admin_login(request):
    if "aduser" in request.session:
        return redirect("admin_dashboard")
    if request.method=='POST':
        email=request.POST.get("email")
        ps=request.POST.get("password")
        with connection.cursor() as cursor:
            q="select * from admin_login where email=%s and password=%s"
            cursor.execute(q,[email,ps])
            data=cursor.fetchone()
            if data:
                request.session["aduser"]=data[1]
                messages.success(request,"Login successfully...")
                return redirect("admin_dashboard")
            else:
                messages.success(request,"Login Failed...")
                return redirect("admin_login")
    return render(request, "admin/admin_login.html")

def admin_dashboard(request):
    if "aduser" not in request.session:
        messages.success(request, "Please access admin dashboard.....")
        return redirect("admin_login")

    return render(request, "admin/admin_dashboard.html")

def product_category(request):
    if "aduser" not in request.session:
        messages.error(request, "Please login first")
        return redirect("admin_login")
    with connection.cursor() as cursor:
        cursor.execute("""
            SELECT id, name, image
            FROM product_category
        """)
        categories = cursor.fetchall()
        

    return render(
        request,
        "admin/product_category.html",
        {"categories": categories}
    )

def edit_category(request, id):
    if "aduser" not in request.session:
        messages.success(request, "Please  access edit category.....")
        return redirect("admin_login")
    with connection.cursor() as cursor:
        cursor.execute(
            "SELECT id, name, image FROM product_category WHERE id=%s",
            [id]
        )
        category = cursor.fetchone()

    if request.method == "POST":
        name = request.POST.get("name")
        image = request.FILES.get("image")

        with connection.cursor() as cursor:
            if image:
                image_path=os.path.join(settings.MEDIA_ROOT, "products" ,image.name)
                os.makedirs(os.path.dirname(image_path), exist_ok=True)
                with open(image_path, "wb")as f:
                    for chunk in image.chunks():
                        f.write(chunk)
                image_r_p ="/ecommerceapp/static/images/products/" + image.name

                cursor.execute(
                    "UPDATE product_category SET name=%s, image=%s WHERE id=%s",
                    [name, image_r_p, id]
                )

            else:
                cursor.execute(
                    "UPDATE product_category SET name=%s WHERE id=%s",
                    [name, id]
                )

        messages.success(request, "Please edit category successfully.....")
        return redirect('product_category')

    return render(request, 'admin/edit_category.html', {
        'category': category,
        'MEDIA_URL': settings.MEDIA_URL
    })


def delete_category(request, id):
    if "aduser" in request.session:
        with connection.cursor() as cursor:
            cursor.execute(
            "DELETE FROM product_category WHERE id=%s",
            [id]
        )
    messages.success(request, "Please delete category successfully.....")
    return redirect("product_category")



def add_category(request):
    if "aduser" in request.session:
       if request.method == "POST":
        name = request.POST.get("name")
        image = request.FILES.get("image")

        if image:
            image_path=os.path.join(settings.MEDIA_ROOT, "category" ,image.name)
            os.makedirs(os.path.dirname(image_path), exist_ok=True)
            with open(image_path, "wb")as f:
                for chunk in image.chunks():
                    f.write(chunk)
            image_r_p ="/ecommerceapp/static/images/category/" + image.name
                

        with connection.cursor() as cursor:
            cursor.execute(
                "INSERT INTO product_category (name, image) VALUES (%s, %s)",
                [name, image_r_p]
            )
        messages.success(request, "Please add category successfully.....")
        return redirect("product_category")

    return render(request, "admin/add_category.html")

def add_product(request):

    # 🔐 Admin login check
    if "aduser" not in request.session:
        return redirect("admin_login")

    # ✅ FETCH CATEGORIES (always available)
    with connection.cursor() as cursor:
        cursor.execute("SELECT DISTINCT name FROM product_category")
        categories = cursor.fetchall()

    if request.method == 'POST':
        name = request.POST.get("name")
        description = request.POST.get("description")
        category = request.POST.get("category")
        price = request.POST.get("price")
        image = request.FILES.get("image")

        image_r_p = None
        if image:
            image_path = os.path.join(settings.MEDIA_ROOT, "products", image.name)
            os.makedirs(os.path.dirname(image_path), exist_ok=True)
            with open(image_path, "wb") as f:
                for chunk in image.chunks():
                    f.write(chunk)
            image_r_p = "/ecommerceapp/static/images/products/" + image.name

        with connection.cursor() as cursor:
            cursor.execute(
                """
                INSERT INTO add_product (name, description, category, price, image)
                VALUES (%s, %s, %s, %s, %s)
                """,
                [name, description, category, price, image_r_p]
            )

        messages.success(request, "Product added successfully!")
        return redirect("add_product")

    return render(request, "admin/add_product.html", {
        "categories": categories
    })
def add_product(request):

    # 🔐 Admin login check
    if "aduser" not in request.session:
        return redirect("admin_login")

    # ✅ FETCH CATEGORIES (always available)
    with connection.cursor() as cursor:
        cursor.execute("SELECT DISTINCT name FROM product_category")
        categories = cursor.fetchall()

    if request.method == 'POST':
        name = request.POST.get("name")
        description = request.POST.get("description")
        category = request.POST.get("category")
        price = request.POST.get("price")
        image = request.FILES.get("image")

        image_r_p = None
        if image:
            image_path = os.path.join(settings.MEDIA_ROOT, "products", image.name)
            os.makedirs(os.path.dirname(image_path), exist_ok=True)
            with open(image_path, "wb") as f:
                for chunk in image.chunks():
                    f.write(chunk)
            image_r_p = "/ecommerceapp/static/images/products/" + image.name

        with connection.cursor() as cursor:
            cursor.execute(
                """
                INSERT INTO add_product (name, description, category, price, image)
                VALUES (%s, %s, %s, %s, %s)
                """,
                [name, description, category, price, image_r_p]
            )

        messages.success(request, "Product added successfully!")
        return redirect("add_product")

    return render(request, "admin/add_product.html", {
        "categories": categories
    })




def electronics_feedback(request):
    # 🔐 Admin login check
    if "aduser" not in request.session:
        return redirect("electronics_feedback")

    # 📊 Fetch feedback data (always if admin is logged in)
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM electronics_feedback ORDER BY created_at DESC")
        feedbacks = cursor.fetchall()

        cursor.execute("SELECT COUNT(*) FROM electronics_feedback")
        total_feedback = cursor.fetchone()[0]

        cursor.execute("SELECT COUNT(*) FROM electronics_feedback WHERE is_read = 0")
        new_feedback = cursor.fetchone()[0]

        cursor.execute("SELECT AVG(rating) FROM electronics_feedback")
        avg_rating = round(cursor.fetchone()[0] or 0, 1)

    
    # 📄 Render feedback page
    return render(
        request,
        "admin/electronics_feedback.html",
        {
            "feedbacks": feedbacks,
            "total_feedback": total_feedback,
            "new_feedback": new_feedback,
            "avg_rating": avg_rating,
        }
    )




def view_electronics_feedback(request, id):
    if "aduser" not in request.session:
        return redirect("view_electronics_feedback")
    with connection.cursor() as cursor:
        cursor.execute("UPDATE electronics_feedback SET is_read=1 WHERE id=%s", [id])
        cursor.execute("SELECT * FROM electronics_feedback WHERE id=%s", [id])
        feedback = cursor.fetchone()
    return render(request, 'admin/electronics_feedback_view.html', {'feedback': feedback})

def users(request):
    if "aduser" not in request.session:
        messages.success(request, "⚠️ Please login to view the Users List and manage users.")
        return redirect("users")
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM users")
        users = cursor.fetchall()

        cursor.execute("SELECT COUNT(*) FROM users")
        total_users = cursor.fetchone()[0]

        cursor.execute("SELECT COUNT(*) FROM users WHERE status='active'")
        active_users = cursor.fetchone()[0]

        cursor.execute("SELECT COUNT(*) FROM users WHERE status='blocked'")
        blocked_users = cursor.fetchone()[0]

        cursor.execute("SELECT COUNT(*) FROM users WHERE role='admin'")
        admin_users_count = cursor.fetchone()[0]
   
    return render(request, 'admin/users.html', {
        'users': users,
        'total_users': total_users,
        'active_users': active_users,
        'blocked_users': blocked_users,
        'admin_users_count': admin_users_count
    })

def block_user(request, user_id):
    if "aduser" not in request.session:
        return redirect("block_user")
    with connection.cursor() as cursor:
        cursor.execute(
            "UPDATE users SET status='blocked' WHERE id=%s",
            [user_id]
        )
    messages.success(request, "✅ User has been blocked successfully.")
    return redirect('users')


def unblock_user(request, user_id):
    if "aduser" not in request.session:
        return redirect("unblock_user")
    with connection.cursor() as cursor:
        cursor.execute(
            "UPDATE users SET status='active' WHERE id=%s",
            [user_id]
        )
    messages.success(request, "✅ User has been unblocked successfully.")
    return redirect('users')

def electronics_products(request):
    if "aduser" not in request.session:
        return redirect("electronics_products")
    with connection.cursor() as cursor:
        cursor.execute("""
            SELECT *
            FROM add_product
            WHERE category = 'Electronics'
        """)
        products = cursor.fetchall()
    
    messages.success(request, "✅ Product is now active and visible to customers.")
    return render(
        request,
        'admin/admin_electronics.html',
        {'products': products}
    )

def view_product(request):
    if "aduser" not in request.session:
        return redirect("admin_login")   # ⚠ better redirect properly

    with connection.cursor() as cursor:
        # 🔥 Latest product first
        cursor.execute("SELECT * FROM add_product ORDER BY id DESC")
        product = cursor.fetchall()

        datalist = [
            {
                "id": row[0],
                "name": row[1],
                "description": row[2],
                "category": row[3],
                "price": row[4],
                "image": row[5],
            }
            for row in product
        ]

    return render(
        request,
        'admin/view_product.html',
        {'product': datalist}
    )


def edit_product(request, id):
    if "aduser" not in request.session:
        return redirect("edit_product")
    if request.method == 'POST':
        name = request.POST.get("name")
        description = request.POST.get("description")
        price = request.POST.get("price")
        image = request.FILES.get("image")

        if image:
            image_path=os.path.join(settings.MEDIA_ROOT, "products" ,image.name)
            os.makedirs(os.path.dirname(image_path), exist_ok=True)
            with open(image_path, "wb")as f:
                for chunk in image.chunks():
                    f.write(chunk)
            image_r_p ="/ecommerceapp/static/images/products/" + image.name
            with connection.cursor() as cursor:
                cursor.execute("""
                    UPDATE add_product
                    SET name=%s, description=%s, price=%s, image=%s
                    WHERE id=%s
                """, [name,description, price,image_r_p, id])
                return redirect('view_product')
        else:
            cursor.execute("""
                    UPDATE add_product
                    SET name=%s, description=%s, price=%s
                    WHERE id=%s
                """, [name,description, price, id])
            messages.success(request, "🛠️ Product updated successfully!")
            return redirect('view_product')
        # ✅ FIX HERE
        

    with connection.cursor() as cursor:
        cursor.execute(
            "SELECT * FROM add_product WHERE id=%s",
            [id]
        )
        product = cursor.fetchone()

    return render(
        request,
        'admin/edit_product.html',
        {'product': product}
    )


def delete_product(request, id):
    if "aduser" not in request.session:
        return redirect("delete_product")
    with connection.cursor() as cursor:
        cursor.execute(
            "DELETE FROM add_product WHERE id=%s",
            [id]
        )
    messages.success(request, "✅ Product deleted successfully!")
    # ✅ FIX HERE
    return redirect('view_product')


def admin_logout(request):
    logout(request)
    messages.success(request, "Logout successfully...")
    return redirect("admin_login")










