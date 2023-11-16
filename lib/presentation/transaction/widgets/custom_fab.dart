import 'package:cash_manager/presentation/core/utils/bottom_sheet_helpers.dart';
import 'package:cash_manager/presentation/transaction/expense/expense_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.add,
      iconTheme: IconThemeData(size: 22),
      backgroundColor: Color(0xff00b6e4),
      visible: true,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          child: Icon(Icons.money_off, color: Color(0xff0039a5)),
          backgroundColor: Colors.white,
          onTap: () {
            showCustomModalBottomSheet(context, ExpensePage());
          },
          label: 'Expense',
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500, color: Colors.black,
          ),
        ),
        SpeedDialChild(
          child: Icon(Icons.attach_money, color: Color(0xff0039a5)),
          backgroundColor: Colors.white,
          onTap: () {
            showCustomModalBottomSheet(context, ExpensePage());
          },
          label: 'Income',
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500, color: Colors.black,
          ),
        ),

      ],
    );
  }
}
