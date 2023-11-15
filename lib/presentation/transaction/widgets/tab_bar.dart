import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _selectedColor = Color(0xff1a73e8);
  final _unselectedColor = Color(0xff5f6368);
  final _tabs = [
    Tab(text: 'Jan'),
    Tab(text: 'Mar'),
    Tab(text: 'Apr'),
    Tab(text: 'May'),
    Tab(text: 'Jun'),
    Tab(text: 'Jul'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      tabs: _tabs,
      labelColor: _selectedColor,
      indicatorColor: _selectedColor,
      unselectedLabelColor: _unselectedColor,
      indicatorSize: TabBarIndicatorSize.label,
    );
  }
}
