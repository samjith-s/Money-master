import 'package:money_manager/screens/homeScreen/common_scafforld_home.dart';
import 'package:money_manager/transaction_db/transaction_db_functions.dart';
import 'package:money_manager/transaction_db/transaction_db_model.dart';

import '../../../value_notifiers.dart';

showTodayTransactions() {
  //TransactionDbFunctions.instance.getAllTransactions();
  var today = DateTime.now();
  var lastDay = today.subtract(const Duration(days: 1));
  List<TransactionModel> list = transactionListNotifier.value.toList();
  //print(list);
  transactionListNotifier.value.clear();
  Future.forEach<TransactionModel>(list, (model) {
    if (model.date.isAfter(lastDay)) {
      transactionListNotifier.value.add(model);
    }
  });
  transactionListNotifier.notifyListeners();
}

showWeeklyTransactions() async {
  await TransactionDbFunctions.instance.getAllTransactions();
  var today = DateTime.now();
  var lastWeek = today.subtract(const Duration(days: 7));
  List<TransactionModel> list = transactionListNotifier.value.toList();
  transactionListNotifier.value.clear();
  Future.forEach<TransactionModel>(list, (model) {
    if (model.date.isAfter(lastWeek)) {
      transactionListNotifier.value.add(model);
    }
  });
  transactionListNotifier.notifyListeners();
}

showMonthlyTransactions() async {
  await TransactionDbFunctions.instance.getAllTransactions();
  var today = DateTime.now();
  var lastMonth = today.subtract(Duration(days: today.day));
  List<TransactionModel> list = transactionListNotifier.value.toList();
  transactionListNotifier.value.clear();
  Future.forEach<TransactionModel>(list, (model) {
    if (model.date.isAfter(lastMonth)) {
      transactionListNotifier.value.add(model);
    }
  });
  transactionListNotifier.notifyListeners();
}

showYearlyTransactions() async {
  await TransactionDbFunctions.instance.getAllTransactions();
  var today = DateTime.now();
  var lastYear = today.subtract(const Duration(days: 365));
  List<TransactionModel> list = transactionListNotifier.value.toList();
  transactionListNotifier.value.clear();
  Future.forEach<TransactionModel>(list, (model) {
    if (model.date.isAfter(lastYear)) {
      transactionListNotifier.value.add(model);
    }
  });
  transactionListNotifier.notifyListeners();
}

showTransactionsInPeriod(DateTime start, DateTime end) async {
  await TransactionDbFunctions.instance.getAllTransactions();

  List<TransactionModel> list = transactionListNotifier.value.toList();
  transactionListNotifier.value.clear();
  Future.forEach<TransactionModel>(list, (model) {
    if (model.date.isAfter(start.subtract(const Duration(days: 1))) &&
        model.date.isBefore(end.add(const Duration(days: 1)))) {
      transactionListNotifier.value.add(model);
    }
  });
  transactionListNotifier.notifyListeners();
}

searchTransaction() async {
  await TransactionDbFunctions.instance.getAllTransactions();
  
  List<TransactionModel> list = transactionListNotifier.value.toList();
  transactionListNotifier.value.clear();
  Future.forEach<TransactionModel>(list, (model) {
    // if () {
    //   transactionListNotifier.value.add(model);
    // }
  });
  transactionListNotifier.notifyListeners();
}
