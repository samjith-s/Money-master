import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../application/categories/categories_bloc.dart';

class AddPageDatePicker extends StatelessWidget {
  const AddPageDatePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        DateTime date = state.addScreenDate;
        return GestureDetector(
          child: Row(
            children: [
              const Icon(
                Icons.calendar_month,
                color: Color.fromARGB(255, 234, 233, 233),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                DateFormat('dd/MM/yyyy').format(date),
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 234, 233, 233)),
              ),
              const Icon(
                Icons.arrow_drop_down,
                size: 29,
                color: Color.fromARGB(255, 234, 233, 233),
              )
            ],
          ),
          onTap: () async {
            final DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: date,
              firstDate: DateTime.now().subtract(const Duration(days: 30)),
              lastDate: DateTime.now(),
            );
            if (pickedDate != null && pickedDate != state.addScreenDate) {
              BlocProvider.of<CategoriesBloc>(context)
                  .add(ChangeDate(newDate: pickedDate));
            }
          },
        );
      },
    );
  }
}
