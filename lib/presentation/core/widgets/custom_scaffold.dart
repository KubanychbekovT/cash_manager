import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget body;
  final Widget? floatingActionButton;
  final bool isScrolling;
  final Widget? appBarTitle;
  final BottomNavigationBar? bottomNavigationBar;
  final bool useAppBar;
  final List<Widget> actions;
  final Drawer? drawer;
  final bool hasBackButton;
  final double? titleSpacing;

  const CustomScaffold(
      {super.key, this.padding, required this.body, this.floatingActionButton, required this.isScrolling, this.appBarTitle, this.bottomNavigationBar, required this.useAppBar, required this.actions, this.drawer, required this.hasBackButton, this.titleSpacing});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: drawer,
          body: Padding(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 5),
            child: isScrolling ? SingleChildScrollView(
              child: body,
            )
                : body,
          ),
          bottomNavigationBar: bottomNavigationBar,
          floatingActionButton: floatingActionButton,
        ));
  }
}
