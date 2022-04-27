import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/screens/Statiticsscreen/pie_chart_functions.dart';
import 'package:money_manager/screens/Statiticsscreen/statitics_widgets.dart';
import 'package:money_manager/common_widgets.dart';
import 'package:money_manager/value_notifiers.dart';
import 'package:sizer/sizer.dart';

import '../../transaction_db/transaction_db_functions.dart';
import '../../transaction_db/transaction_db_model.dart';

TextStyle constStyle = const TextStyle(
    color: appWhite,
    fontFamily: 'AnticSlab',
    fontSize: 18,
    fontWeight: FontWeight.w700);

class StatiticsPage extends StatefulWidget {
  const StatiticsPage({Key? key}) : super(key: key);

  @override
  State<StatiticsPage> createState() => _StatiticsPageState();
}

class _StatiticsPageState extends State<StatiticsPage> {
  @override
  Widget build(BuildContext context) {
    const sizedBox10 = SizedBox(
      height: 10,
    );
    var boxDecoration = BoxDecoration(
        color: const Color(0xFF272934),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black, spreadRadius: 2, offset: Offset(3, 3))
        ]);
    return WillPopScope(
      child: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: transactionListNotifier,
          builder: (BuildContext ctx, List<TransactionModel> transactions,
              Widget? _) {
            return ListView(
              children: [
                const CustomAppBar(title: 'Statitics'),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        width: 100.w - 30,
                        //height: 100.w - 36.5,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Expense structure', style: constStyle),
                                // const Icon(
                                //   Icons.more_vert_outlined,
                                //   color: appWhite,
                                // )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            sizedBox10,
                            ValueListenableBuilder(
                              valueListenable: accountDetailsNotifier,
                              builder: (BuildContext _ctx, AccountModel balance,
                                  Widget? _) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      balance.period!,
                                      style: const TextStyle(
                                          color: appWhite,
                                          fontFamily: 'Rokkitt-Thin',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(height: 3.5),
                                    Text(
                                      '₹ ${balance.expense}',
                                      style: rokitt,
                                    )
                                  ],
                                );
                              },
                            ),
                            Align(
                              child: SizedBox(
                                width: 195,
                                height: 195,
                                child: PieChart(
                                  //PieChartData(),
                                  expensePieChartData(),
                                  swapAnimationDuration:
                                      const Duration(seconds: 8),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              //color: appWhite,
                              width: 100.w,
                              height: 5.w,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext _ctx, int _index) {
                                  return Indicator(
                                    color: _index < 9
                                        ? expensecolor[_index]
                                        : appBlue,
                                    text: expenseClist[_index].catergory,
                                  );
                                },
                                itemCount: expenseClist.length,
                              ),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        decoration: boxDecoration,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 100.w - 30,
                        //height: 100.w - 34.5,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Income structure', style: constStyle),
                                // const Icon(
                                //   Icons.more_vert_outlined,
                                //   color: appWhite,
                                // )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            sizedBox10,
                            ValueListenableBuilder(
                                valueListenable: accountDetailsNotifier,
                                builder: (BuildContext _ctx,
                                    AccountModel balance, Widget? _) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        balance.period!,
                                        style: const TextStyle(
                                            color: appWhite,
                                            fontFamily: 'Rokkitt-Thin',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(height: 3.5),
                                      Text(
                                        '₹ ${balance.income}',
                                        style: rokitt,
                                      )
                                    ],
                                  );
                                }),
                            Align(
                              child: SizedBox(
                                width: 195,
                                height: 195,
                                child: PieChart(
                                  incomePieChartData(),
                                  swapAnimationDuration:
                                      const Duration(seconds: 8),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              //color: appWhite,
                              width: 100.w,
                              height: 5.w,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext _ctx, int _index) {
                                  return Indicator(
                                    color: _index < 9
                                        ? incomecolor[_index]
                                        : appBlue,
                                    text: incomeClist[_index].catergory,
                                  );
                                },
                                itemCount: incomeClist.length,
                              ),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        decoration: boxDecoration,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      onWillPop: () {
        selectedIndexNotifier.value = 0;
        selectedIndexNotifier.notifyListeners();
        return Future.value(false);
      },
    );
  }
}

var rokitt = const TextStyle(
  color: appWhite,
  fontFamily: 'Rokkitt-Thin',
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
