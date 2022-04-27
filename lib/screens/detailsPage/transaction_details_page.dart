import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/screens/addTransaction/add_screen.dart';
import 'package:money_manager/transaction_db/transaction_db_functions.dart';
import 'package:money_manager/transaction_db/transaction_db_model.dart';

import '../../value_notifiers.dart';

class TransactionDetailsPage extends StatelessWidget {
  const TransactionDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var valuetextStyle = TextStyle(
      fontFamily: 'AnticSlab',
      color: detailsNotifier.value.type == Categorytype.expense
          ? Colors.red
          : incomeGreen,
      fontSize: 25,
    );
    var itemTextStyle = const TextStyle(
      fontFamily: 'AnticSlab',
      color: Colors.white,
      fontSize: 25,
    );
    SizedBox space = const SizedBox(height: 20);
    return Scaffold(
      backgroundColor: const Color(0xFF17191f),
      body: SafeArea(
        child: Center(
          child: ValueListenableBuilder(
              valueListenable: detailsNotifier,
              builder: (BuildContext cts, TransactionModel detail, Widget? _) {
                var boxDecoration = BoxDecoration(
                  border: Border.all(
                    color: appWhite, //const Color(0xFFe8d764),
                  ),
                  borderRadius: BorderRadius.circular(10),
                );
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Remark: ',
                              style: itemTextStyle,
                            ),
                            Flexible(
                              child: Text(
                                detail.remark,
                                style: valuetextStyle,
                              ),
                            ),
                          ],
                        ),
                        decoration: boxDecoration,
                        height: 70,
                        padding: const EdgeInsets.all(8),
                      ),
                      space,
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Amount: ',
                              style: itemTextStyle,
                            ),
                            Text(
                              detail.amount,
                              style: valuetextStyle,
                            ),
                          ],
                        ),
                        decoration: boxDecoration,
                        height: 70,
                        padding: const EdgeInsets.all(8),
                      ),
                      space,
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Date: ',
                              style: itemTextStyle,
                            ),
                            Text(
                              parseDate(detail.date),
                              style: valuetextStyle,
                            ),
                          ],
                        ),
                        decoration: boxDecoration,
                        height: 70,
                        padding: const EdgeInsets.all(8),
                      ),
                      space,
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Category: ',
                              style: itemTextStyle,
                            ),
                            Flexible(
                              child: Text(
                                detail.category,
                                style: valuetextStyle,
                              ),
                            ),
                          ],
                        ),
                        decoration: boxDecoration,
                        height: 70,
                        padding: const EdgeInsets.all(8),
                      ),
                      space,
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Payment mode: ',
                              style: itemTextStyle,
                            ),
                            Text(
                              detail.peymentMode,
                              style: valuetextStyle,
                            ),
                          ],
                        ),
                        decoration: boxDecoration,
                        height: 70,
                        padding: const EdgeInsets.all(8),
                      ),
                      space,
                      //space,
                      Row(
                        children: [
                          detailsPageButton(
                            icon: Icons.edit,
                            onpressed: () {
                              //detailsNotifier.value.clear();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => AddTransactionScreen(
                                    model: detail,
                                  ),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: detailsPageButton(
                              onpressed: () {
                                showDialog(
                                  context: context,
                                  builder: (ctx) =>
                                      TransactionDeleteConfirmationAlert(
                                          id: detail.id),
                                );
                              },
                              icon: Icons.delete,
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                );
              }),
        ),
      ),
    );
  }

  SizedBox detailsPageButton(
      {required IconData icon, required void Function()? onpressed}) {
    return SizedBox(
      width: 100,
      child: OutlinedButton(
        onPressed: onpressed,
        child: Icon(
          icon,
          color: icon == Icons.edit ? appBlue : expenseRed,
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 2, color: appWhite),
        ),
      ),
    );
  }
}

class TransactionDeleteConfirmationAlert extends StatelessWidget {
  final int id;
  const TransactionDeleteConfirmationAlert({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      insetPadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.only(top: 25, bottom: 10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      titlePadding: const EdgeInsets.only(left: 80, top: 30),

      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Are you sure?',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'AnticSlab',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Do you want to Delete this?",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'AnticSlab',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('No',
                    style: TextStyle(fontFamily: 'AnticSlab', color: appBlue)),
              ),
              TextButton(
                onPressed: () {
                  TransactionDbFunctions.instance.deleteTransaction(id);
                  int count = 0;
                  Navigator.of(context).popUntil((_) => count++ >= 2);
                },
                child: const Text('Yes',
                    style: TextStyle(fontFamily: 'AnticSlab', color: appBlue)),
              ),
            ],
          ),
        ],
      ),

///////////////////////////////////////////////////////
      // shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(10.0))),
      // insetPadding: EdgeInsets.zero,
      // contentPadding: const EdgeInsets.only(top: 25, bottom: 10),
      // clipBehavior: Clip.antiAliasWithSaveLayer,
      // // backgroundColor: expenseRed,
      // content: Column(
      //   children: [
      //     const Text('This transaction will be deleted'),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     Row(
      //       children: [
      //         TextButton(
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //           child: const Text('Cancel'),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.only(right: 8),
      //           child: TextButton(
      //             onPressed: () {
      //               TransactionDbFunctions.instance.deleteTransaction(id);
      //               int count = 0;
      //               Navigator.of(context).popUntil((_) => count++ >= 2);
      //             },
      //             child: const Text('Ok'),
      //           ),
      //         )
      //       ],
      //       mainAxisAlignment: MainAxisAlignment.end,
      //     )
      //   ],
      //   mainAxisSize: MainAxisSize.min,
      // ),
    );
  }
}

parseDate(DateTime date) {
  List pdate = DateFormat('yMMMd').format(date).split(' ');

  var _date = DateFormat('dd/MM/yyyy').format(date).split("/");

  return '${pdate.first} ${_date[0]}, ${pdate.last}';
}

final obj = TransactionModel(
  id: 1,
  date: DateTime.now(),
  amount: '',
  remark: '',
  type: Categorytype.income,
  category: '',
  peymentMode: '',
);
