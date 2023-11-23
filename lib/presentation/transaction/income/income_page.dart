import 'package:cash_manager/application/income/income_form_cubit.dart';
import 'package:cash_manager/application/income/income_form_cubit.dart';
import 'package:cash_manager/presentation/core/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncomePage extends StatefulWidget {
  const IncomePage({super.key});

  @override
  State<IncomePage> createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => IncomeFormCubit(),
      child: CustomScaffold(
            body: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: nameController,
                    onChanged: (value) {
                      context.read<IncomeFormCubit>().nameChanged(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: amountController,
                    onChanged: (value) {
                      context.read<IncomeFormCubit>().amountChanged(int.parse(value));
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Amount',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      context.read<IncomeFormCubit>().sendData();
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
                    ),
                    ));
  }
}