import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/value_notifiers.dart';
import '../../transaction_db/transaction_db_model.dart';

List<String> availableIncomeCategories = [];
List<String> availableExpenseCategories = [];
void getUsedCategories() {
  List<TransactionModel> _list = transactionListNotifier.value.toList();
  Future.forEach<TransactionModel>(_list, (element) {
    if (element.type == Categorytype.income &&
        !availableIncomeCategories.contains(element.category)) {
      availableIncomeCategories.add(element.category);
    } else if (element.type == Categorytype.expense &&
        !availableExpenseCategories.contains(element.category)) {
      availableExpenseCategories.add(element.category);
    }
  });
}

Map<int, PieChartDataModel> kv = {};
List<PieChartDataModel> incomeClist = [
  PieChartDataModel(catergory: '', amount: 0)
];

PieChartData incomePieChartData() {
  availableIncomeCategories.clear();
  kv = {};
  getUsedCategories();

  List<TransactionModel> _list = transactionListNotifier.value.toList();
  for (int i = 0; i < availableIncomeCategories.length; i++) {
    double amount = 0;
    Future.forEach<TransactionModel>(_list, (element) {
      if (element.category == availableIncomeCategories[i]) {
        amount += double.parse(element.amount);
      }
    });
    PieChartDataModel _model = PieChartDataModel(
        amount: amount, catergory: availableIncomeCategories[i]);
    kv[i] = _model;
  }
  incomeClist = kv.values.toList();

  incomeClist.sort(
    (a, b) => b.amount.compareTo(a.amount),
  );
  kv.clear();
  kv = incomeClist.asMap();

  return PieChartData(
    sectionsSpace: 0,
    sections: kv.isNotEmpty
        ? kv
            .map(
              (key, value) {
                return MapEntry(
                  key,
                  PieChartSectionData(
                    value: value.amount,
                    title: '',
                    color: key < 9 ? incomecolor[key] : appBlue,
                  ),
                );
              },
            )
            .values
            .toList()
        : [
            PieChartSectionData(
              value: 1,
              title: '',
              color: Colors.black,
            )
          ],
  );
}

List<PieChartDataModel> expenseClist = kv.values.toList();

PieChartData expensePieChartData() {
  availableExpenseCategories.clear();
  kv = {};
  getUsedCategories();
  List<TransactionModel> _list = transactionListNotifier.value.toList();
  for (int i = 0; i < availableExpenseCategories.length; i++) {
    double amount = 0;
    Future.forEach<TransactionModel>(_list, (element) {
      if (element.category == availableExpenseCategories[i]) {
        amount += double.parse(element.amount);
      }
    });
    PieChartDataModel _model = PieChartDataModel(
        amount: amount, catergory: availableExpenseCategories[i]);
    kv[i] = _model;
  }
  expenseClist = kv.values.toList();
  expenseClist.sort((a, b) => b.amount.compareTo(a.amount));
  kv.clear();
  kv = expenseClist.asMap();

  return PieChartData(
      sectionsSpace: 0,
      sections: kv.isNotEmpty
          ? kv
              .map((key, value) {
                return MapEntry(
                    key,
                    PieChartSectionData(
                      value: value.amount,
                      title: '',
                      color: key < 9 ? expensecolor[key] : appBlue,
                    ));
              })
              .values
              .toList()
          : [
              PieChartSectionData(
                value: 1,
                title: '',
                color: Colors.black,
              )
            ]);
}

List<Color> expensecolor = [
  Colors.red,
  const Color.fromARGB(255, 78, 133, 244),
  const Color.fromARGB(255, 255, 102, 0),
  const Color.fromARGB(255, 245, 3, 124),
  const Color.fromARGB(255, 88, 6, 102),
  Colors.brown,
  Colors.blueGrey,
  const Color.fromARGB(255, 220, 62, 4),
  const Color.fromARGB(255, 203, 2, 69),
];
List<Color> incomecolor = [
  Colors.green,
  Colors.yellow,
  const Color.fromARGB(255, 207, 69, 231),
  Colors.blueAccent,
  Colors.redAccent,
  const Color.fromARGB(255, 232, 122, 50),
  const Color.fromARGB(255, 234, 77, 129),
  const Color.fromARGB(255, 10, 68, 170),
  const Color.fromARGB(255, 87, 94, 14),
];

class PieChartDataModel {
  final String catergory;
  final double amount;

  PieChartDataModel({required this.catergory, required this.amount});
}
