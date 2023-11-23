import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_form_state.dart';
part 'income_form_cubit.freezed.dart';


@injectable
class IncomeFormCubit extends Cubit<IncomeFormState> {
  IncomeFormCubit() : super(IncomeFormState.initial());

  void nameChanged(String name) {
    emit(state.copyWith(name: name));
    print('Hello');
  }

  void amountChanged(int amount) {
    emit(state.copyWith(amount: amount));
  }

  void sendData() {
    // Здесь можно выполнить необходимые действия для передачи данных на другую страницу
    // Например, использовать Navigator.push для перехода на другую страницу
    // И передать данные через конструктор или методы на этой новой странице
  }
}