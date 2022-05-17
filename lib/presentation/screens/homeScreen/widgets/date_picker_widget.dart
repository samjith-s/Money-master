import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/application/allrounder/allrounder_bloc.dart';
import '../../../../application/transactions/transactions_bloc.dart';
import '../home_page.dart';

class DaitPickerContainer extends StatelessWidget {
  const DaitPickerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTimeRange intialDateRange = DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 7)),
      end: DateTime.now(),
    );
    final start = intialDateRange.start;
    final end = intialDateRange.end;
    return BlocBuilder<AllrounderBloc, AllrounderState>(
      builder: (context, state) {
        return GestureDetector(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 15, 78, 129),
            ),
            height: height * .053191,
            child: Row(
              children: [
                Text(
                  state.showHomeDatePickerHint
                      ? 'Date Range'
                      : '${DateFormat('dd/MM').format(start)} - ${DateFormat('dd/MM').format(end)}',
                  style: const TextStyle(
                    color: Color(0xFF17191f),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'AnticSlab',
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xFF17191f),
                ),
              ],
            ),
          ),
          onTap: () async {
            final DateTimeRange? dateTimeRange = await showDateRangePicker(
              context: context,
              initialDateRange: intialDateRange,
              firstDate: DateTime(2021),
              lastDate: DateTime.now(),
            );
            if (dateTimeRange == null) {
              return;
            } else {
              BlocProvider.of<AllrounderBloc>(context).add(
                  const AllrounderEvent.changeDateHintvisibility(
                      visibility: false));
              intialDateRange = dateTimeRange;
              BlocProvider.of<TransactionsBloc>(context).add(
                TransactionsEvent.filterByPeriod(
                  start: dateTimeRange.start,
                  end: dateTimeRange.end,
                ),
              );
            }
          },
        );
      },
    );
  }
}
