import 'package:cash_manager/domain/transaction/expense/expense.dart';
import 'package:cash_manager/domain/transaction/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'expense_dto.freezed.dart';
part 'expense_dto.g.dart';

@freezed
abstract class ExpenseDto implements _$ExpenseDto {
  ExpenseDto._();
  @HiveType(typeId: 0)
  factory ExpenseDto({
    @HiveField(3)
    required String expenseName,
    @HiveField(4)
    required int category,
    @HiveField(0)
    required double amount,
    @HiveField(1)
    required DateTime date,
  }) = _ExpenseDto;

  factory ExpenseDto.fromDomain(Expense expense) =>
      ExpenseDto(expenseName:expense.name.getOrCrash(),
          category:expense.category,amount:expense.amount.getOrCrash(), date: expense.date);
  Expense toDomain() {
    return Expense(name: TransactionName(expenseName),category: category,amount: Amount(amount),date: date);
  }
}