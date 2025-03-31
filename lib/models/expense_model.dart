import 'package:uuid/uuid.dart';

const uuid = Uuid();

class ExpenseModel {
  ExpenseModel({required this.title, required this.amount, required this.date})
    : id = uuid.v4(); // Initializer List;

  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
