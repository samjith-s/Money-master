import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:money_manager/screens/addTransaction/add_screen.dart';
import 'package:money_manager/screens/homeScreen/homeScreenCustomWidgets/filter_functions.dart';
import 'package:money_manager/transaction_db/transaction_db_functions.dart';
import '../../../config/constant_colors.dart';
import '../../../common_widgets.dart';
import '../../../user_db/user_model.dart';
import '../../../value_notifiers.dart';
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
            groupValueNotifier.value = Categorytype.income;
            dropdownValueNotifier.value = '';
            dateNotifier.value = DateTime.now();
            selectedIndexNotifier.value = 2;
            selectedIndexNotifier.notifyListeners();
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
                          '₹ ${(account.income) - (account.expense)}',
                          style: TextStyle(
                              fontFamily: 'Rokkitt-Thin',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              //fontWeight: FontWeight.w600,
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
                        Text('Total Income', style: accountBalanceTextstyle),
                        Text(
                          '₹ ${(account.income)}',
                          style: const TextStyle(
                            color: incomeGreen,
                            fontFamily: 'Rokkitt-Thin',
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            //fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Expense', style: accountBalanceTextstyle),
                        Text(
                          '₹ ${(account.expense)}',
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
              }),
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

class DaitPickerContainer extends StatefulWidget {
  const DaitPickerContainer({Key? key}) : super(key: key);

  @override
  State<DaitPickerContainer> createState() => _DaitPickerContainerState();
}

class _DaitPickerContainerState extends State<DaitPickerContainer> {
  bool showHint = true;
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
        height: height * .053191,
        child: Row(
          children: [
            Text(
              showHint
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
          setState(() {
            showHint = false;
            intialDateRange = dateTimeRange;
            showTransactionsInPeriod(dateTimeRange.start, dateTimeRange.end);
            homePageDropdownValue.value = null;
            homePageDropdownValue.notifyListeners();
          });
        }
      },
    );
  }
}

ValueNotifier<String?> homePageDropdownValue = ValueNotifier(null);

class PeriodSelectDropdown extends StatefulWidget {
  const PeriodSelectDropdown({Key? key}) : super(key: key);

  @override
  State<PeriodSelectDropdown> createState() => _PeriodSelectDropdownState();
}

class _PeriodSelectDropdownState extends State<PeriodSelectDropdown> {
  @override
  Widget build(BuildContext context) {
    homePageDropdownValue.value == 'All Time'
        ? TransactionDbFunctions.instance.getAllTransactions()
        : null;
    return Container(
      height: height * .053191,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 15, 78, 129),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: ValueListenableBuilder(
          valueListenable: homePageDropdownValue,
          builder: (BuildContext _context, String? dropdownvalue, Widget? _) {
            return DropdownButton<String>(
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
              value: dropdownvalue,
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: 'All Time',
                  child: const Text('All Time'),
                  onTap: () {
                    TransactionDbFunctions.instance.getAllTransactions();
                  },
                ),
                DropdownMenuItem<String>(
                  value: 'Last Day',
                  child: const Text('Last Day'),
                  onTap: () {
                    showTodayTransactions();
                  },
                ),
                DropdownMenuItem<String>(
                  value: 'Last Week',
                  child: const Text('Last Week'),
                  onTap: () {
                    showWeeklyTransactions();
                  },
                ),
                DropdownMenuItem<String>(
                  value: 'Last Month',
                  child: const Text('Last Month'),
                  onTap: () {
                    showMonthlyTransactions();
                  },
                ),
                DropdownMenuItem<String>(
                  value: 'Last Year',
                  child: const Text('Last Year'),
                  onTap: () {
                    showYearlyTransactions();
                  },
                ),
              ],
              onChanged: (value) {
                setState(() {
                  homePageDropdownValue.value = value;
                });
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
            );
          },
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
    return Row(
      children: [
        const UserProfilePicture(),
        showSearchbar == false
            ? Expanded(
                child: SizedBox(
                  height: height * .09308,
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
                                fontSize: 23,
                                fontFamily: 'Rokkitt-Thin',
                                color: Color(0xFF17191f),
                                fontWeight: FontWeight.bold,
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
                          color: Color(0xFF17191f),
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
                        width: width * .4611,
                        height: height * .06648,
                        child: TextField(
                          textCapitalization: TextCapitalization.sentences,
                          onChanged: (value) async {
                            if (transactionListNotifier.value
                                    .where(
                                      (element) =>
                                          element.remark.contains(value),
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
                                            element.remark.contains(value),
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
