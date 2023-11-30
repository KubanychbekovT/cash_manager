import 'package:cash_manager/application/transaction/transaction_watcher/transaction_watcher_cubit.dart';
import 'package:cash_manager/presentation/core/routes/router.dart';
import 'package:cash_manager/presentation/core/utils/transaction_display_utils.dart';
import 'package:cash_manager/presentation/core/utils/transaction_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 30,
      ),
      Expanded(
          child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, There',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Good morning',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 24,
          ),
        ],
      )),
      SizedBox(
        height: 20,
      ),
      Expanded(
          child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff00b5e6),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'total amount'.toUpperCase(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('\$'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
                BlocBuilder<TransactionWatcherCubit, TransactionWatcherState>(
                  builder: (context, state) {
                    return Text(
                      state.maybeMap(
                        loadSuccess: (state) {
                          final transactions = convertEitherToTransactionList(
                              state.transactionData);
                          final expenseIncomeTotal =
                              calculateExpenseIncomeTotal(transactions);
                          final balance = expenseIncomeTotal.value2 -
                              expenseIncomeTotal.value1.toDouble();
                          return formatBalance(balance);
                        },
                        orElse: () => '0',
                      ),
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    );
                  },
                ),
              ])
            ],
          ),
          Spacer(),
          GestureDetector(
              onTap: () {
                goToDetailPage(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'View detail',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ))
        ],
      )),
      SizedBox(
        height: 20,
      )
    ]);
  }
}
