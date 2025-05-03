import 'package:expense_tracker_app/models/expense_model.dart';
import 'package:expense_tracker_app/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expensesList,
    required this.onRemoveExpense,
  });

  final void Function(ExpenseModel expense) onRemoveExpense;
  final List<ExpenseModel> expensesList;

  @override
  Widget build(BuildContext context) {
    // ListView.builder creates a scrollable list of items without creating all items at once
    // itemCount lets it know how many items should be displayed
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder:
          (context, index) => Dismissible(
            // A key is a unique indentifier for an object
            // This case the key is used to make sure the correct object is deleted
            // ValueKey is used to assign an value to the key
            key: ValueKey(expensesList[index]),
            onDismissed: (direction) {
              onRemoveExpense(expensesList[index]);
            },
            child: ExpensesItem(expense: expensesList[index]),
          ),
    );
  }
}
