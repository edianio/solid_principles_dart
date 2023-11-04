/// Fifth Principle: Dependency Inversion Principle
/// This principle states that high-level modules/classes should not depend on low-level modules/classes.

abstract class Payment {
  payment();
}

class PaymentViaCreditCard implements Payment {
  @override
  payment() {
    // some code
  }
}

class PaymentViaDebitCard implements Payment {
  @override
  payment() {
    // some code
  }
}

class Checkout {
  // our checkout class knows nothing about how payment works
  // its knows pay.payment() is paying method
  checkOut(Payment pay) {
    pay.payment();
  }
}
