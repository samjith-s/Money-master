import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../category_db/category_db_functions.dart';
import '../../category_db/category_models.dart';
import '../../config/constant_colors.dart';
import '../../value_notifiers.dart';
import '../categoryScreen/category_functions.dart';
import 'add_screen.dart';

class AddPageRadiobuttons extends StatelessWidget {
  const AddPageRadiobuttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: groupValueNotifier,
      builder: (BuildContext context, Categorytype dropdownvalue, Widget? _) {
        return Row(
          children: [
            Row(
              children: [
                Radio(
                  value: Categorytype.income,
                  groupValue: dropdownvalue,
                  onChanged: (newvalue) {
                    groupValueNotifier.value = Categorytype.income;
                    dropdownValueNotifier.value =
                        incomeListNotifier.value.isEmpty
                            ? ''
                            : incomeListNotifier.value[0].category;
                  },
                ),
                const Text('Income')
              ],
            ),
            Row(
              children: [
                Radio(
                  value: Categorytype.expense,
                  groupValue: dropdownvalue,
                  onChanged: (newvalue) {
                    groupValueNotifier.value = Categorytype.expense;
                    dropdownValueNotifier.value =
                        expenseListNotifier.value.isEmpty
                            ? ''
                            : expenseListNotifier.value[0].category;
                  },
                ),
                const Text('Expense')
              ],
            )
          ],
        );
      },
    );
  }
}

class AddPageDropDown extends StatelessWidget {
  final String hintText;
  const AddPageDropDown({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 58,
      child: ValueListenableBuilder(
          valueListenable: groupValueNotifier,
          builder: (BuildContext context, Categorytype radio, Widget? _) {
            return ValueListenableBuilder(
              valueListenable: radio == Categorytype.income
                  ? incomeListNotifier
                  : expenseListNotifier,
              builder:
                  (BuildContext context, List<CategoryModel> list, Widget? _) {
                return DropdownButtonHideUnderline(
                  child: ValueListenableBuilder(
                    valueListenable: dropdownValueNotifier,
                    builder: (BuildContext context, String dropdownvalue,
                        Widget? _) {
                      return DropdownButton<String>(
                        hint: Text(
                          hintText,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 201, 200, 200)),
                        ),
                        isDense: true,
                        value: dropdownvalue.isEmpty ? null : dropdownvalue,
                        items: list.map((CategoryModel value) {
                          return DropdownMenuItem<String>(
                            value: value.category,
                            child: Text(value.category),
                          );
                        }).toList(),
                        onChanged: (value) {
                          dropdownValueNotifier.value = value!;
                        },
                        style: const TextStyle(
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                        ),
                        dropdownColor: appBlue,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          size: 30,
                          color: appBlue,
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: appBlue,
        ),
      ),
    );
  }
}

class AddPageNewCategory extends StatelessWidget {
  const AddPageNewCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: OutlinedButton.icon(
        onPressed: () {
          groupValueNotifier.value == Categorytype.income
              ? showIncomeAddPopup(context)
              : showExpenseAddPopup(context);
        },
        icon: const Icon(
          Icons.category_outlined,
          color: appBlue,
          size: 15,
        ),
        label: const Text(
          'New Category',
          style: TextStyle(fontSize: 15, fontFamily: 'Roboto', color: appBlue),
        ),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: appBlue,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}

class AddPageDatePicker extends StatelessWidget {
  const AddPageDatePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: dateNotifier,
      builder: (BuildContext context, DateTime date, Widget? _) {
        return GestureDetector(
          child: Row(
            children: [
              const Icon(
                Icons.calendar_month,
                color: appBlue,
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
                    color: appBlue),
              ),
              const Icon(
                Icons.arrow_drop_down,
                size: 29,
                color: appBlue,
              )
            ],
          ),
          onTap: () async {
            final DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: dateNotifier.value,
              firstDate: DateTime.now().subtract(const Duration(days: 30)),
              lastDate: DateTime.now(),
            );
            if (pickedDate != null && pickedDate != dateNotifier.value) {
              dateNotifier.value = pickedDate;
            }
          },
        );
      },
    );
  }
}