import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/transactions/transactions_bloc.dart';
import '../../../../config/constant_colors.dart';

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
                  BlocProvider.of<TransactionsBloc>(context)
                      .add(TransactionsEvent.deleteTransaction(id: id));
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
    );
  }
}