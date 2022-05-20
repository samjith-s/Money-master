import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:money_manager/domain/transactions/model/account_class_model.dart';
import 'package:money_manager/domain/transactions/model/transaction_db_model.dart';
import 'package:money_manager/domain/transactions/transactions_services.dart';

import '../../domain/categories/model/category_db_model.dart';

@LazySingleton(as: TransationServices)
class TransactionServicesImpl extends TransationServices {
  final transactionDbName = 'transaction_Db';

  @override
  Future<void> addTransction({required TransactionModel transaction}) async {
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
    transactionDb.put(transaction.id, transaction);
  }

  @override
  Future<void> deleteTransaction({required int id}) async {
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
    transactionDb.delete(id);
  }

  @override
  Future<List<TransactionModel>> getAllTransactions() async {
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
        
    return transactionDb.values.toList();
  }

  @override
  Future<void> updateTransaction({required TransactionModel newModel}) async {
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
    transactionDb.put(newModel.id, newModel);
  }

  @override
  Future<AccountModel> updateBal(
      {required List<TransactionModel> transactions,
      required String period}) async {
    double income = 0;
    double expence = 0;
    await Future.forEach<TransactionModel>(
      transactions,
      (transaction) {
        if (transaction.type == Categorytype.income) {
          double amount = double.tryParse(transaction.amount) ?? 0;
          income = income + amount;
        } else {
          double amount = double.tryParse(transaction.amount) ?? 0;
          expence = expence + amount;
        }
      },
    );
    return AccountModel(income: income, expense: expence, period: period);
  }

  @override
  Future<List<TransactionModel>> filterTransactions(
      {required List<TransactionModel> transactions,
      required String period}) async {
    var till = DateTime.now();
    int days = 0;
    switch (period) {
      case 'Last day':
        days = 1;
        break;
      case 'Last week':
        days = 7;
        break;
      case 'Last month':
        days = 30;
        break;
      case 'Last year':
        days = 365;
        break;
      default:
        break;
    }
    var from = till.subtract(Duration(days: days));
    List<TransactionModel> list = [];

    await Future.forEach<TransactionModel>(
      transactions,
      (model) {
        if (model.date.isAfter(from)) {
          list.add(model);
        }
      },
    );
    return list;
  }

  @override
  Future<List<TransactionModel>> filterByPeriod({
    required List<TransactionModel> transactions,
    required DateTime start,
    required DateTime end,
  }) async {
    List<TransactionModel> list = [];
    await Future.forEach<TransactionModel>(transactions, (model) {
      if (model.date.isAfter(start.subtract(const Duration(days: 1))) &&
          model.date.isBefore(end.add(const Duration(days: 1)))) {
        list.add(model);
      }
    });
    return list;
  }

  @override
  List<TransactionModel> searchTransaction(
      {required List<TransactionModel> transactions,
      required String searchkey}) {
    List<TransactionModel> _list;
    _list = transactions
        .where((element) => element.remark.contains(searchkey))
        .toList();
    return _list;
  }
}
