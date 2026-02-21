import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Groceries',
      amount: 150.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Bus Ticket',
      amount: 2.99,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Electricity Bill',
      amount: 75.50,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Dinner',
      amount: 45.00,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Gym Membership',
      amount: 29.99,
      date: DateTime.now(),
      category: Category.leisure,
    
    ),
    Expense(
      title: 'Flight Ticket',
      amount: 299.99,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Book',
      amount: 12.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Coffee',
      amount: 4.50,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Concert',
      amount: 120.00,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx) => const NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Expense Tracker'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          IconButton(onPressed: _openExpenseOverlay, icon: const Icon(Icons.add)),
        ],
      ),
      body: Column(
          children: [
            const Text('The chart'),
            Expanded(child: ExpensesList(expenses: _registeredExpenses)),
          ],
      ),
    );
  }
}
