import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/screens/Statiticsscreen/statitics_widgets.dart';
import 'package:money_manager/common_widgets.dart';
import 'package:sizer/sizer.dart';

TextStyle constStyle = const TextStyle(
    color: appWhite,
    fontFamily: 'Roboto',
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
    return SafeArea(
        child: ListView(children: [
      CustomAppBar(title: 'Statitics'),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: 100.w - 30,
              height: 100.w - 36.5,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Expense structure', style: constStyle),
                      const Icon(
                        Icons.more_vert_outlined,
                        color: appWhite,
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  sizedBox10,
                  const Text(
                    'Last 30 Days',
                    style: TextStyle(color: appWhite),
                  ),
                  const SizedBox(height: 3.5),
                  Text(
                    '₹ 6000',
                    style: constStyle,
                  ),
                  Align(
                    child: SizedBox(
                      width: 195,
                      height: 195,
                      child: PieChart(
                        PieChartData(
                            //centerSpaceRadius: 60,
                            sectionsSpace: 0,
                            sections: [
                              PieChartSectionData(
                                value: 70,
                                title: '',
                                color: Color.fromARGB(255, 190, 68, 2),
                              ),
                              PieChartSectionData(
                                value: 20,
                                title: '',
                                color: Colors.blue,
                              ),
                              PieChartSectionData(
                                value: 10,
                                title: '',
                                color: Colors.yellow,
                              ),
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Indicator(
                        color: Color.fromARGB(255, 241, 88, 5),
                        text: 'Travel',
                        isSquare: false,
                      ),
                      Indicator(
                        color: Colors.blue,
                        text: 'Party',
                        isSquare: false,
                      ),
                      Indicator(
                        color: Colors.yellow,
                        text: 'Bills',
                        isSquare: false,
                      ),
                    ],
                  ),
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
              height: 100.w - 36.5,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Income structure', style: constStyle),
                      const Icon(
                        Icons.more_vert_outlined,
                        color: appWhite,
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  sizedBox10,
                  const Text(
                    'Last 30 Days',
                    style: TextStyle(color: appWhite),
                  ),
                  const SizedBox(height: 3.5),
                  Text(
                    '₹ 116000',
                    style: constStyle,
                  ),
                  Align(
                    child: SizedBox(
                      width: 195,
                      height: 195,
                      child: PieChart(
                        PieChartData(sectionsSpace: 0, sections: [
                          PieChartSectionData(
                            value: 70,
                            title: '',
                            color: Color.fromARGB(255, 20, 129, 25),
                          ),
                          PieChartSectionData(
                            value: 20,
                            title: '',
                            color: Colors.blue,
                          ),
                          PieChartSectionData(
                            value: 10,
                            title: '',
                            color: Colors.yellow,
                          ),
                        ]),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Indicator(
                        color: Color.fromARGB(255, 5, 241, 17),
                        text: 'Salary',
                        isSquare: false,
                      ),
                      Indicator(
                        color: Colors.blue,
                        text: 'Commission',
                        isSquare: false,
                      ),
                      Indicator(
                        color: Colors.yellow,
                        text: 'Rent',
                        isSquare: false,
                      ),
                    ],
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              decoration: boxDecoration,
            ),
          ],
        ),
      ),
    ]));
  }
}
