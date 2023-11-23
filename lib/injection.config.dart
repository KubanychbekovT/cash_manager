// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cash_manager/application/expense/expense_form_cubit.dart'
    as _i3;
import 'package:cash_manager/application/income/income_form_cubit.dart' as _i5;
import 'package:cash_manager/application/transaction/transaction_watcher/transaction_watcher_cubit.dart'
    as _i6;
import 'package:cash_manager/domain/transaction/i_transaction_repository.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ExpenseFormCubit>(
        () => _i3.ExpenseFormCubit(gh<_i4.ITransactionRepository>()));
    gh.factory<_i5.IncomeFormCubit>(
        () => _i5.IncomeFormCubit(gh<_i4.ITransactionRepository>()));
    gh.factory<_i6.TransactionWatcherCubit>(
        () => _i6.TransactionWatcherCubit(gh<_i4.ITransactionRepository>()));
    return this;
  }
}
