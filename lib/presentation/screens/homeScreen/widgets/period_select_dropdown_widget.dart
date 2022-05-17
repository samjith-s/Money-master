import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/allrounder/allrounder_bloc.dart';
import '../../../../application/transactions/transactions_bloc.dart';
import '../home_page.dart';

class PeriodSelectDropdown extends StatelessWidget {
  const PeriodSelectDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsBloc, TransactionsState>(
      builder: (context, state) {
        return Container(
          height: height * .053191,
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 15, 78, 129),
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
            focusColor: const Color.fromARGB(255, 15, 78, 129),
            hint: const Text(
              'Filter History',
              style: TextStyle(
                  fontFamily: 'AnticSlab',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF17191f)),
            ),
            isDense: true,
            value: state.filterDropdownValue,
            items: <DropdownMenuItem<String>>[
              DropdownMenuItem<String>(
                value: 'All time',
                child: const Text('All Time'),
                onTap: () {
                  BlocProvider.of<TransactionsBloc>(context)
                      .add(const TransactionsEvent.getAllTransactions());
                },
              ),
              DropdownMenuItem<String>(
                value: 'Last day',
                child: const Text('Last Day'),
                onTap: () {
                  BlocProvider.of<TransactionsBloc>(context).add(
                      const TransactionsEvent.filterTransactions(
                          period: 'Last day'));
                },
              ),
              DropdownMenuItem<String>(
                value: 'Last week',
                child: const Text('Last Week'),
                onTap: () {
                  BlocProvider.of<TransactionsBloc>(context).add(
                      const TransactionsEvent.filterTransactions(
                          period: 'Last week'));
                },
              ),
              DropdownMenuItem<String>(
                value: 'Last month',
                child: const Text('Last Month'),
                onTap: () {
                  BlocProvider.of<TransactionsBloc>(context).add(
                      const TransactionsEvent.filterTransactions(
                          period: 'Last month'));
                },
              ),
              DropdownMenuItem<String>(
                value: 'Last year',
                child: const Text('Last Year'),
                onTap: () {
                  BlocProvider.of<TransactionsBloc>(context).add(
                      const TransactionsEvent.filterTransactions(
                          period: 'Last year'));
                },
              ),
            ],
            onChanged: (value) {
              BlocProvider.of<TransactionsBloc>(context)
                  .add(TransactionsEvent.changeFilterDDValue(newValue: value!));
              BlocProvider.of<AllrounderBloc>(context).add(
                  const AllrounderEvent.changeDateHintvisibility(
                      visibility: true));
            },
            borderRadius: BorderRadius.circular(10),
            style: const TextStyle(
              fontSize: 15,
              fontFamily: 'AnticSlab',
              fontWeight: FontWeight.w600,
              color: Color(0xFF17191f),
            ),
            dropdownColor: const Color.fromARGB(255, 15, 78, 129),
            iconEnabledColor: const Color(0xFF17191f),
            icon: const Icon(Icons.keyboard_arrow_down),
          )),
        );
      },
    );
  }
}
