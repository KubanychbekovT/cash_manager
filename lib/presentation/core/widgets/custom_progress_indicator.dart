import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final Color? color;

  const CustomProgressIndicator({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      valueColor:
          AlwaysStoppedAnimation(color ?? Theme.of(context).primaryColor),
    ));
  }
}
