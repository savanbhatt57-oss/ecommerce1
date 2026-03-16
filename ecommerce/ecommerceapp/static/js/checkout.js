function showPayment() {
    let payment = document.querySelector('input[name="payment"]:checked').value;

    document.getElementById("payment_method").value = payment;

    if (payment === "upi") {
        document.getElementById("upi-section").style.display = "block";
        document.getElementById("cod-section").style.display = "none";
    } else {
        document.getElementById("upi-section").style.display = "none";
        document.getElementById("cod-section").style.display = "block";
    }
}
