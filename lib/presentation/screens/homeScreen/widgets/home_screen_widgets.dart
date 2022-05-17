import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/transactions/transactions_bloc.dart';
import '../../../../application/allrounder/allrounder_bloc.dart';
import '../../../../config/constant_colors.dart';
import '../../addTransaction/add_screen.dart';
import '../common_scafforld_home.dart';
import '../home_page.dart';

class AddIconButton extends StatelessWidget {
  const AddIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: CircleAvatar(
        radius: 25,
        backgroundColor: const Color.fromARGB(255, 15, 78, 129),
        child: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            amountContoller.text = '';
            remarkContoller.text = '';
            BlocProvider.of<AllrounderBloc>(context)
                .add(const AllrounderEvent.navigate(pageIndex: 2));
          },
        ),
      ),
    );
  }
}

class BalanceShowContainer extends StatelessWidget {
  const BalanceShowContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height * .1968,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .05556),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 18,
          ),
          child: BlocBuilder<TransactionsBloc, TransactionsState>(
            builder: (context, state) {
              double accountBalance =
                  (state.account.income) - (state.account.expense);
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Account Balance', style: accountBalanceTextstyle),
                      Text(
                        '₹ ${(state.account.income) - (state.account.expense)}',
                        style: TextStyle(
                            fontFamily: 'Rokkitt-Thin',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color:
                                accountBalance > 0 ? incomeGreen : expenseRed),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Income', style: accountBalanceTextstyle),
                      Text(
                        '₹ ${(state.account.income)}',
                        style: const TextStyle(
                          color: incomeGreen,
                          fontFamily: 'Rokkitt-Thin',
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Expense', style: accountBalanceTextstyle),
                      Text(
                        '₹ ${(state.account.expense)}',
                        style: const TextStyle(
                          color: expenseRed,
                          fontFamily: 'Rokkitt-Thin',
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          width: width * .88888,
          height: height * .16489,
          decoration: BoxDecoration(
            color: const Color(0xFF272934),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
