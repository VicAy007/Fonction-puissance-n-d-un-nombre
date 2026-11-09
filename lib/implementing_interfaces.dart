abstract class PaymentMethod {
  void pay(double amount);
}

class MobileMoney implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Payment of $amount using Mobile Money');
  }
}

class BankCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Payment of $amount using Bank Card');
  }
}

class Cash implements PaymentMethod {
  @override
  void pay(double amount) {
    print('Payment of $amount using Cash');
  }
}

void processPayment(PaymentMethod method, double amount) {
  method.pay(amount);
}

void main() {
  processPayment(MobileMoney(), 5000);

  processPayment(BankCard(), 10000);

  processPayment(Cash(), 2500);
}

//Resultat
/* Payment of 5000.0 using Mobile Money
Payment of 10000.0 using Bank Card
Payment of 2500.0 using Cash */
