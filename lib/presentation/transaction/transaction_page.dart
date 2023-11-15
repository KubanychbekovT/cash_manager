import 'package:cash_manager/presentation/core/widgets/custom_scaffold.dart';
import 'package:cash_manager/presentation/transaction/expense/expense_page.dart';
import 'package:cash_manager/presentation/transaction/widgets/income_expense_chart.dart';
import 'package:cash_manager/presentation/transaction/widgets/tab_bar.dart';
import 'package:cash_manager/presentation/transaction/widgets/type_of_expences.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage>
    with SingleTickerProviderStateMixin {
  late final _tabController;
  final List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];
  late final List<Tab> tabs = months
      .map((e) => Tab(
            text: e,
          ))
      .toList();

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 12);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff00b6e4),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                isScrollControlled: true,
                builder: (BuildContext context) => ExpensePage());
          },
          child: Icon(Icons.add),
        ),
        body: Column(children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Color(0xff0039a5),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hi, Temirlan",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "Good morning",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Color(0xff00b5e6),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.account_balance_wallet_outlined,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('total amount'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey)),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('\$'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey)),
                                        Text(
                                          '2,400',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "View detail",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: 150,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IncomeExpenseChart(),
                    )),
                Positioned(top: 380, right: 0, left: 0, child: CustomTabBar()),
                Positioned(
                    top: 450,
                    right: 0,
                    left: 0,
                    child: TypeOfExpences())
              ],
            ),
          ),

          // SizedBox(
          //     height: 50,
          //     child: SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         child: TabBar(
          //             indicatorColor: Color(0xff86c1d2),
          //             labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          //             unselectedLabelStyle: TextStyle(color: Colors.grey),
          //             indicatorSize: TabBarIndicatorSize.tab,
          //             indicatorWeight: 3.0,
          //             // Set the indicator weight
          //             onTap: (index) {},
          //             isScrollable: true,
          //             controller: _tabController,
          //             tabs: tabs))),
        ]));
  }
}
