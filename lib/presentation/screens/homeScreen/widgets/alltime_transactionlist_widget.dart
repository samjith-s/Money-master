import 'package:flutter/material.dart';
import '../../../../config/constant_colors.dart';
import '../../../../domain/categories/model/category_db_model.dart';
import '../../../../domain/transactions/model/transaction_db_model.dart';
import '../../detailsPage/transaction_details_page.dart';

class AllTimeTransactionList extends StatelessWidget {
  final List<TransactionModel> transactionsList;
  const AllTimeTransactionList({Key? key, required this.transactionsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (BuildContext ctx, index) {
        TransactionModel details = transactionsList[index];
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFf79087),
                      child: Text(
                        details.remark[0],
                        style: const TextStyle(
                          fontSize: 18,
                          color: appWhite,
                          fontFamily: 'Acme',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          details.remark,
                          style: const TextStyle(
                              fontSize: 19,
                              color: appWhite,
                              fontFamily: 'Rokkitt-Thin',
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          parseDate(details.date),
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontFamily: 'Rokkitt-Thin',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  '₹ ${details.amount}',
                  style: TextStyle(
                    fontFamily: 'Rokkitt-Thin',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: details.type == Categorytype.income
                        ? incomeGreen
                        : expenseRed,
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (cntx) => TransactionDetailsPage(
                  index: index,
                  model: details,
                ),
              ),
            );
          },
        );
      },
      separatorBuilder: (BuildContext ctx, index) {
        return const Divider(
          thickness: .05,
          color: Color.fromARGB(255, 231, 246, 232),
        );
      },
      itemCount: transactionsList.length,
    );
  }
}
