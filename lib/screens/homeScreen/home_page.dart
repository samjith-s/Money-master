import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:money_manager/transaction_db/transaction_db_model.dart';
import 'package:sizer/sizer.dart';
import '../../category_db/category_db_functions.dart';
import '../../config/constant_colors.dart';
import '../../user_db/user_db_fuctions.dart';
import '../../value_notifiers.dart';
import '../detailsPage/transaction_details_page.dart';
import 'common_scafforld_home.dart';
import 'homeScreenCustomWidgets/home_screen_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    CategoryDb.instance.separateCategories();
    getUserDetials();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = 100.w;
    return SafeArea(
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(height: width - 75),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                width: width,
                height: width - 150,
                child: Column(
                  children: [
                    //Row with image name and search button
                    const ImageNameRow(),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        //dropdown for periods like monthly weekly
                        PeriodSelectDropdown(),
                        //container with datepicker and show date
                        DaitPickerContainer()
                      ],
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                  color: appBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
              ),
              //first white container with account balance and total income and total expence
              BalanceShowContainer(
                width: width,
              )
            ],
          ),
          //transaction list start here
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Transactions history',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17,
                    color: Color.fromARGB(255, 92, 90, 90),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: width - 24,
                  decoration: const BoxDecoration(
                    color: Color(0xFF272934),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: ListView(children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ValueListenableBuilder(
                        valueListenable: transactionListNotifier,
                        builder: (BuildContext context, dynamic transactionlist,
                            Widget? _) {
                          return ListView.separated(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (BuildContext ctx, index) {
                              TransactionModel details = transactionlist[index];

                              return GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                const Color(0xFFf79087),
                                            child: Text(
                                              details.remark[0],
                                              style: const TextStyle(
                                                fontSize: 18,
                                                color: appWhite,
                                                fontFamily: 'RobotoCondensed',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                details.remark,
                                                style: const TextStyle(
                                                    fontSize: 17,
                                                    color: appWhite,
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              const SizedBox(height: 3),
                                              Text(
                                                _parseDate(details.date),
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '₹${details.amount}',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: details.type ==
                                                  Categorytype.income
                                              ? incomeGreen
                                              : expenseRed,
                                        ),
                                      )
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                ),
                                onTap: () {
                                  detailsNotifier.value = details;
                                  detailsNotifier.notifyListeners();
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (cntx) =>
                                          const TransactionDetailsPage(),
                                    ),
                                  );
                                },
                              );
                            },
                            separatorBuilder: (BuildContext ctx, index) {
                              return const Divider(
                                thickness: .3,
                                color: appWhite,
                              );
                            },
                            itemCount: transactionlist.length,
                          );
                        },
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _parseDate(DateTime date) {
    List pdate = DateFormat('MMMd').format(date).split(' ');
    return '${pdate.last} ${pdate.first}';
  }
}
