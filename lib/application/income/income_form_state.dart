part of 'income_form_cubit.dart';

@freezed
class IncomeFormState with _$IncomeState {
  factory IncomeFormState({
    required String name,
    required int amount
  }) = _IncomeState;


  factory IncomeFormState.initial() => IncomeFormState(name: '', amount: 0);

}

