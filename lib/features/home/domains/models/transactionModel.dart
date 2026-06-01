class TransactionModel {
  final String title;
  final String subtitle;
  final String amount;
  final TransactionType type;

  TransactionModel({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.type,
  });
}

enum TransactionType {
  income,
  expense,
}