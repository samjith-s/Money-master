import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/application/transactions/transactions_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
import '../../../domain/categories/model/category_db_model.dart';
import '../../../domain/transactions/model/transaction_db_model.dart';
import '../addTransaction/add_screen.dart';
import 'widgets/delete_confirmation_alert_widget.dart';
import 'widgets/details_page_button_widget.dart';

var boxDecoration = BoxDecoration(
  border: Border.all(
    color: appWhite,
  ),
  borderRadius: BorderRadius.circular(10),
);

class TransactionDetailsPage extends StatelessWidget {
  final TransactionModel model;
  final int index;
  const TransactionDetailsPage(
      {Key? key, required this.model, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var valuetextStyle = TextStyle(
      fontFamily: 'AnticSlab',
      color: model.type == Categorytype.expense ? Colors.red : incomeGreen,
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
          child: BlocBuilder<TransactionsBloc, TransactionsState>(
            builder: (context, state) {
              final detail = state.transactionsList[index];
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
                    Row(
                      children: [
                        detailsPageButton(
                          icon: Icons.edit,
                          onpressed: () {
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
            },
          ),
        ),
      ),
    );
  }
}

parseDate(DateTime date) {
  List pdate = DateFormat('yMMMd').format(date).split(' ');

  var _date = DateFormat('dd/MM/yyyy').format(date).split("/");

  return '${pdate.first} ${_date[0]}, ${pdate.last}';
}
