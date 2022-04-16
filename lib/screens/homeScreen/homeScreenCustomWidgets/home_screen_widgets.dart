import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:money_manager/screens/addTransaction/add_screen.dart';
import 'package:money_manager/screens/homeScreen/homeScreenCustomWidgets/filter_functions.dart';
import 'package:money_manager/transaction_db/transaction_db_functions.dart';
import 'package:money_manager/user_db/user_db_fuctions.dart';
import 'package:sizer/sizer.dart';
import '../../../config/constant_colors.dart';
import '../../../common_widgets.dart';
import '../../../user_db/user_model.dart';
import '../../../value_notifiers.dart';
import '../common_scafforld_home.dart';

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
            groupValueNotifier.value = Categorytype.income;
            dropdownValueNotifier.value = '';
            dateNotifier.value = DateTime.now();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AddTransactionScreen()));
          },
        ),
      ),
    );
  }
}

class BalanceShowContainer extends StatelessWidget {
  const BalanceShowContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: width - 212,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 18,
          ),
          child: ValueListenableBuilder(
              valueListenable: accountDetailsNotifier,
              builder: (BuildContext context, AccountModel account, Widget? _) {
                double accountBalance = (account.income) - (account.expense);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Account Balance', style: accountBalanceTextstyle),
                        Text(
                          '${(account.income) - (account.expense)}',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 17,
                              color: accountBalance > 0
                                  ? incomeGreen
                                  : expenseRed),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total In', style: accountBalanceTextstyle),
                        Text(
                          '${(account.income)}',
                          style: const TextStyle(
                            color: incomeGreen,
                            fontFamily: 'Roboto',
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Out', style: accountBalanceTextstyle),
                        Text(
                          '${(account.expense)}',
                          style: const TextStyle(
                            color: expenseRed,
                            fontFamily: 'Roboto',
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
          width: width - 40,
          height: 124,
          decoration: BoxDecoration(
              color: const Color(
                  0xFF272934), //const Color.fromARGB(255, 22, 22, 22).withOpacity(.9),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xFF17191f),
                    spreadRadius: 1,
                    offset: Offset(3, 3))
              ]),
        ),
      ),
    );
  }
}

class DaitPickerContainer extends StatefulWidget {
  const DaitPickerContainer({Key? key}) : super(key: key);

  @override
  State<DaitPickerContainer> createState() => _DaitPickerContainerState();
}

class _DaitPickerContainerState extends State<DaitPickerContainer> {
  DateTimeRange intialDateRange = DateTimeRange(
    start: DateTime.now().subtract(const Duration(days: 7)),
    end: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    final start = intialDateRange.start;
    final end = intialDateRange.end;
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 15, 78, 129),
        ),
        height: 40,
        child: Row(
          children: [
            Text(
              '${DateFormat('dd/MM').format(start)} - ${DateFormat('dd/MM').format(end)}',
              style: const TextStyle(color: appWhite, fontSize: 15),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: appWhite,
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
          setState(() {
            intialDateRange = dateTimeRange;
            showTransactionsInPeriod(dateTimeRange.start, dateTimeRange.end);
          });
        }
      },
    );
  }
}

class PeriodSelectDropdown extends StatefulWidget {
  const PeriodSelectDropdown({Key? key}) : super(key: key);

  @override
  State<PeriodSelectDropdown> createState() => _PeriodSelectDropdownState();
}

class _PeriodSelectDropdownState extends State<PeriodSelectDropdown> {
  String? dropdownvalue = 'All time';
  @override
  Widget build(BuildContext context) {
    dropdownvalue == 'All time'
        ? TransactionDbFunctions.instance.getAllTransactions()
        : null;
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isDense: true,
        value: dropdownvalue,
        items: <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: 'All time',
            child: const Text('All time'),
            onTap: () {
              TransactionDbFunctions.instance.getAllTransactions();
            },
          ),
          DropdownMenuItem<String>(
            value: 'Last day',
            child: const Text('Last day'),
            onTap: () {
              showTodayTransactions();
            },
          ),
          DropdownMenuItem<String>(
            value: 'Last week',
            child: const Text('Last week'),
            onTap: () {
              showWeeklyTransactions();
            },
          ),
          DropdownMenuItem<String>(
            value: 'Last month',
            child: const Text('Last month'),
            onTap: () {
              showMonthlyTransactions();
            },
          ),
          DropdownMenuItem<String>(
            value: 'Last year',
            child: const Text('Last year'),
            onTap: () {
              showYearlyTransactions();
            },
          ),
        ],
        onChanged: (value) {
          setState(() {
            dropdownvalue = value;
          });
        },
        borderRadius: BorderRadius.circular(10),
        style: const TextStyle(
          fontSize: 21,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.w600,
          color: appWhite,
        ),
        dropdownColor: const Color(0xFF17191f),
        icon: const Icon(
          Icons.keyboard_arrow_down,
          size: 30,
          color: appWhite,
        ),
      ),
    );
  }
}

class ImageNameRow extends StatefulWidget {
  const ImageNameRow({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageNameRow> createState() => _ImageNameRowState();
}

class _ImageNameRowState extends State<ImageNameRow> {
  bool showSearchbar = false;
  @override
  Widget build(BuildContext context) {
    double width = 100.w;
    return Row(
      children: [
        const UserProfilePicture(),
        showSearchbar == false
            ? Expanded(
                child: SizedBox(
                  height: 70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: userDetailsNotifier,
                          builder:
                              (BuildContext ctx, UserModel model, Widget? _) {
                            return Text(
                              'Hi ${model.name} ✨',
                              style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'RobotoCondensed',
                                color: appWhite,
                              ),
                            );
                          }),
                      IconButton(
                        onPressed: () {
                          TransactionDbFunctions.instance.getAllTransactions();
                          setState(() {
                            showSearchbar = true;
                          });
                        },
                        icon: const Icon(
                          Icons.search,
                          size: 25,
                          color: appWhite,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      )
                    ],
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.only(top: 10, bottom: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                        width: width - 205,
                        height: 50,
                        child: TextField(
                          onChanged: (value) async {
                            if (transactionListNotifier.value
                                    .where(
                                      (element) =>
                                          element.category.contains(value),
                                    )
                                    .toList() ==
                                []) {
                              TransactionDbFunctions.instance
                                  .getAllTransactions();
                            } else {
                              transactionListNotifier.value =
                                  transactionListNotifier.value
                                      .where(
                                        (element) =>
                                            element.category.contains(value),
                                      )
                                      .toList();
                            }
                            if (transactionListNotifier.value == []) {
                              transactionListNotifier.notifyListeners();
                            }
                            if (value == '') {
                              TransactionDbFunctions.instance
                                  .getAllTransactions();
                            }
                          },
                          cursorColor: Colors.black,
                          cursorWidth: 1.5,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search transaction',
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 101, 100, 100),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(
                          () {
                            showSearchbar = false;
                          },
                        );
                      },
                      child: const Text(
                        'search',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              )
      ],
    );
  }
}
