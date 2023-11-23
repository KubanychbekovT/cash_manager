import 'package:cash_manager/application/income/income_form_cubit.dart';
import 'package:cash_manager/application/transaction/transaction_watcher/transaction_watcher_cubit.dart';
import 'package:cash_manager/domain/transaction/income/income.dart';
import 'package:cash_manager/injection.dart';
import 'package:cash_manager/presentation/core/widgets/failure_snackbar.dart';
import 'package:cash_manager/presentation/transaction/widgets/name_text_field.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncomePage extends StatelessWidget {
  IncomePage({super.key, this.income});

  final Income? income;
  final _amountController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (income != null) {
      _nameController.text = income!.name.getOrCrash();
      _amountController.text = income!.amount.getOrCrash().toString();
    }
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: BlocProvider(
        create: (context) => getIt<IncomeFormCubit>()..initialize(income),
        child: Builder(
          builder: (context) {
            return BlocListener<IncomeFormCubit, IncomeFormState>(
              listenWhen: (p, c) =>
                  p.authFailureSuccessOption != c.authFailureSuccessOption,
              listener: (context, state) {
                state.authFailureSuccessOption.fold(
                    () {},
                    (either) =>
                        either.fold((f) => FailureSnackBar(failure: f), (_) {
                          context
                              .read<TransactionWatcherCubit>()
                              .getTransactionData();
                          Navigator.pop(context);
                        }));
              },
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicHeight(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close, size: 20),
                            ),
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                income == null
                                    ? 'Add new income'
                                    : 'Edit income',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    BlocBuilder<IncomeFormCubit, IncomeFormState>(
                      builder: (context, state) {
                        return TransactionTextField(
                          controller: _nameController,
                          state: right(state),
                          onChanged: (value) {
                            context.read<IncomeFormCubit>().nameChanged(value);
                          },
                        );
                      },
                    ),
                    SizedBox(height: 20),

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
