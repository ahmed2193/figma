class PaymentModel {
  final String? icon;
  final String? label;
  final String? desc;

  PaymentModel({this.icon, this.label, this.desc});

  static final listPayments = [
    PaymentModel(icon: 'cash', label: 'Cash'),
    PaymentModel(icon: 'apple', label: 'Apple Pay'),
    PaymentModel(icon: 'paypal', label: 'PayPal'),
    PaymentModel(),
    PaymentModel(
        icon: 'mastercard',
        label: '**** **** **** 5967',
        desc: 'Expires 09/25'),
    PaymentModel(
        icon: 'visa', label: '**** **** **** 7539', desc: 'Expires 10/27'),
    PaymentModel(icon: 'add-credit', label: 'Add Credit or Debit Card'),
  ];
}
