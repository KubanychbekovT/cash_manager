import 'package:cash_manager/repository/transaction/expense_dto.dart';
import 'package:cash_manager/repository/transaction/income_dto.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@Scope(Environment.prod)
@module
abstract class AppInjectableProdModule {
  @lazySingleton
  http.Client get httpClient => http.Client();
  @preResolve
  @Named('income')
  Future<Box<IncomeDto>> get incomeBox =>
      Hive.openBox('income');
  @preResolve
  @Named('expense')
  Future<Box<ExpenseDto>> get expenseBox =>
      Hive.openBox('expense');
}