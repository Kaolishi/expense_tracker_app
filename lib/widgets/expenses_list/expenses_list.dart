import 'package:expense_tracker_app/models/expense_model.dart';
import 'package:expense_tracker_app/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  ExpensesList({super.key, required this.expensesList});

  final List<ExpenseModel> expensesList;

  @override
  Widget build(BuildContext context) {
    // ListView.builder creates a scrollable list of items without creating all items at once
    // itemCount lets it know how many items should be displayed
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder:
          (context, index) => ExpensesItem(expense: expensesList[index]),
    );
  }
}
