import 'package:cash_manager/presentation/transaction/transaction_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cash Manager',
      home: TransactionPage(),
    );
  }
}
