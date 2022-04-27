import 'package:money_manager/screens/detailsPage/transaction_details_page.dart';
import 'package:money_manager/transaction_db/transaction_db_functions.dart';
import 'package:money_manager/transaction_db/transaction_db_model.dart';
import '../../../value_notifiers.dart';

showTodayTransactions() {
  var today = DateTime.now();
  var lastDay = today.subtract(const Duration(days: 1));
  List<TransactionModel> list = transactionListNotifier.value.toList();

  transactionListNotifier.value.clear();
  Future.forEach<TransactionModel>(list, (model) {
    if (model.date.isAfter(lastDay)) {
      transactionListNotifier.value.add(model);
    }
  });
  transactionListNotifier.notifyListeners();
  updateBalance(transactionListNotifier.value, 'Last day');
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
  updateBalance(transactionListNotifier.value, "Last week");
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
  updateBalance(transactionListNotifier.value, 'Last month');
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
  updateBalance(transactionListNotifier.value, 'Last year');
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
  var _start = parseDate(start);
  var _end = parseDate(end);
  updateBalance(transactionListNotifier.value, '$_start - $_end');
}
