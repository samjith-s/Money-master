import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/transactions/transactions_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/presentation/common_widgets.dart';
import 'package:money_manager/presentation/value_notifiers.dart';
import 'package:sizer/sizer.dart';
import '../../../application/allrounder/allrounder_bloc.dart';
import '../../../domain/transactions/model/transaction_db_model.dart';
import 'pie_chart_functions.dart';
import 'statitics_widgets.dart';

TextStyle constStyle = const TextStyle(
    color: appWhite,
    fontFamily: 'AnticSlab',
    fontSize: 18,
    fontWeight: FontWeight.w700);

class StatiticsPage extends StatelessWidget {
  const StatiticsPage({Key? key}) : super(key: key);

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
        child: BlocBuilder<TransactionsBloc, TransactionsState>(
          builder: (context, state) {
            return ListView(
              children: [
                const CustomAppBar(title: 'Statitics'),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        width: 100.w - 30,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Expense structure', style: constStyle),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            sizedBox10,
                            BlocBuilder<TransactionsBloc, TransactionsState>(
                              builder: (context, state) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.account.period!,
                                      style: const TextStyle(
                                          color: appWhite,
                                          fontFamily: 'Rokkitt-Thin',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(height: 3.5),
                                    Text(
                                      '₹ ${state.account.expense}',
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
                                  expensePieChartData(state.transactionsList),
                                  swapAnimationDuration:
                                      const Duration(seconds: 8),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
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
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            sizedBox10,
                            BlocBuilder<TransactionsBloc, TransactionsState>(
                              builder: (context, state) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.account.period!,
                                      style: const TextStyle(
                                          color: appWhite,
                                          fontFamily: 'Rokkitt-Thin',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(height: 3.5),
                                    Text(
                                      '₹ ${state.account.income}',
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
                                  incomePieChartData(state.transactionsList),
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
        BlocProvider.of<AllrounderBloc>(context)
            .add(const AllrounderEvent.navigate(pageIndex: 0));
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
