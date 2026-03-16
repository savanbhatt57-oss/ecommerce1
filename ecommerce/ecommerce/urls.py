"""
URL configuration for ecommerce project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/6.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from ecommerceapp import views
from django.conf import settings
from django.conf.urls.static import static

# Create your admin here.
urlpatterns = [
    # path('admin/', admin.site.urls),
    path('',views.home,name="home"),
    path('login/',views.login,name="login"),
    path('accounts/', include('allauth.urls')),
    path('register/',views.register,name="register"),
    path('product/',views.product,name="product"),
    path('product/cat_details/<str:cat>/', views.cat_details, name="cat_detail"),
    path('feedback/', views.feedback, name="feedback"),
    path('thankyou/', views.thankyou, name="thankyou"),
    path('contact/', views.contact, name="contact"),
    path("cart/", views.cart, name="cart"),
    path("addtocart/<int:id>/", views.addtocart, name="addtocart"),
    path('checkout/', views.checkout, name="checkout"),
    path("", views.home, name="home"),
    path("logout",views.logout,name="logout"),
    path("remove_cart/<int:id>/", views.remove_cart, name="remove_cart"),
    

  

   
   



    path('admin_login/', views.admin_login, name="admin_login"),
    path('admin_dashboard/', views.admin_dashboard, name="admin_dashboard"),
    path('product_category/', views.product_category, name="product_category"),
    path('product_category/edit/<int:id>/',views.edit_category,name="edit_category"),
    path('product_category/delete/<int:id>/',views.delete_category,name="delete_category"),
    path('add_category/', views.add_category, name='add_category'),
    path('admin/add-product/', views.add_product, name="add_product"),
    path('admin/electronics-feedback/', views.electronics_feedback, name="electronics_feedback"),
    path('admin/electronics-feedback/<int:id>/', views.view_electronics_feedback, name="view_electronics_feedback"),
    path('admin/users/', views.users, name="users"),
    path('admin/users/block/<int:user_id>/', views.block_user, name="block_user"),
    path('admin/users/unblock/<int:user_id>/', views.unblock_user, name="unblock_user"),
    path('admin/product/add/', views.add_product, name='add_product'),
    path('admin/product/view_product/', views.view_product, name="view_product"),
    path('admin/product/edit/<int:id>/', views.edit_product, name="edit_product"),
    path('admin/product/delete/<int:id>/', views.delete_product, name="delete_product"),
    path('admin/logout/', views.admin_logout, name="admin_logout"),
    
   


    



     
   



   
    

    
    

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)





