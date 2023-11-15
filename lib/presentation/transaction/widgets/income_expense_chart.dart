import 'dart:math';

import 'package:flutter/material.dart';

class IncomeExpenseChart extends StatelessWidget {
  const IncomeExpenseChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: Column(
        children: [
          const SizedBox(height: 16),
          _buildCandleRow(isIncome: false),
          Container(color: Colors.grey[400], width: double.infinity, height: 1),
          _buildCandleRow(isIncome: true),
          const SizedBox(height: 16),
          _buildMonthLabels(),
        ],
      ),
    );
  }

  Widget _buildCandleRow({required bool isIncome}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < chartMonths.length; i++)
          _buildCandle(isIncome: isIncome, monthIndex: i),
      ],
    );
  }

  Widget _buildCandle({required bool isIncome, required int monthIndex}) {
    final height = Random().nextInt(45) + 15.0;

    return SizedBox(
      width: 22,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          color: _getBarColor(height, isIncome),
          borderRadius: _getBorderRadius(isIncome),
        ),
      ),
    );
  }

  BorderRadius _getBorderRadius(bool isIncome) {
    if (isIncome) {
      return const BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      );
    } else {
      return const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      );
    }
  }

  Color _getBarColor(double height, bool isIncome) {
    if (height == 0) {
      return isIncome ? Colors.grey[400]! : Colors.grey[700]!;
    } else {
      return isIncome ? const Color(0xff08b1e2) : const Color(0xff01359a);
    }
  }

  Widget _buildMonthLabels() {
    return Container(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var value in chartMonths)
            Container(
              width: 22,
              height: 14,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

const chartMonths = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Income Expense Chart'),
        ),
        body: Center(
          child: IncomeExpenseChart(),
        ),
      ),
    ),
  );
}
