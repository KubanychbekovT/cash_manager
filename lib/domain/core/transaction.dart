import 'package:cash_manager/domain/transaction/category.dart';
import 'package:cash_manager/domain/transaction/expense/expense.dart';
import 'package:cash_manager/domain/transaction/income/income.dart';
import 'package:cash_manager/domain/transaction/value_objects.dart';

class Transaction {
  final TransactionName name;
  final Amount amount;
  final DateTime date;
  final Category category;
  final bool isIncome;

  Transaction({required this.name, required this.amount, required this.date, this.category=Income.incomeCategory, required this.isIncome});
  factory Transaction.fromExpense(Expense expense) => Transaction(name: expense.name, amount: expense.amount, date: expense.date, isIncome: false, category: Expense.categories[expense.category]);
  factory Transaction.fromIncome(Income income) => Transaction(name: income.name, amount: income.amount, date: income.date, isIncome: true);
}