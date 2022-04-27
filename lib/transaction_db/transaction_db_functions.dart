import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:money_manager/transaction_db/transaction_db_model.dart';
import '../value_notifiers.dart';

String transactionDbName = 'transaction_Db';

abstract class TransactionDbFunct {
  Future<void> addTransaction(TransactionModel value);
  Future<void> getAllTransactions();
  Future<void> deleteTransaction(int id);
  Future<void> editTransaction(TransactionModel value);
}

class TransactionDbFunctions implements TransactionDbFunct {
  TransactionDbFunctions._internal();

  static TransactionDbFunctions instance = TransactionDbFunctions._internal();

  factory TransactionDbFunctions() {
    return instance;
  }
  @override
  Future<void> addTransaction(TransactionModel value) async {
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
    transactionDb.put(value.id, value);
    getAllTransactions();
  }

  @override
  Future<void> getAllTransactions() async {
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
    var _transactions = transactionDb.values.toList();
    _transactions.sort((first, second) => second.date.compareTo(first.date));
    transactionListNotifier.value.clear();
    transactionListNotifier.value.addAll(_transactions);
    transactionListNotifier.notifyListeners();
    updateBalance(_transactions, 'All time');
  }

  @override
  Future<void> deleteTransaction(int id) async {
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
    transactionDb.delete(id);
    getAllTransactions();
  }

  @override
  Future<void> editTransaction(TransactionModel value) async {
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
    transactionDb.put(value.id, value);
    detailsNotifier.value = value;
    detailsNotifier.notifyListeners();
    getAllTransactions();
  }
}

class AccountModel {
  double income;
  double expense;
  String? period;

  AccountModel({this.income = 0, this.expense = 0, this.period});
}

Future<void> updateBalance(
    List<TransactionModel> transactions, String period) async {
  accountDetailsNotifier.value = AccountModel();
  accountDetailsNotifier.value.period = period;
  Future.forEach<TransactionModel>(
    transactions,
    (transaction) {
      if (transaction.type == Categorytype.income) {
        double amount = double.tryParse(transaction.amount) ?? 0;
        accountDetailsNotifier.value.income =
            accountDetailsNotifier.value.income + amount;
        accountDetailsNotifier.notifyListeners();
      } else {
        double amount = double.tryParse(transaction.amount) ?? 0;
        accountDetailsNotifier.value.expense =
            accountDetailsNotifier.value.expense + amount;
        accountDetailsNotifier.notifyListeners();
      }
    },
  );
}
