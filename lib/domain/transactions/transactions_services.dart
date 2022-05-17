import 'package:money_manager/domain/transactions/model/account_class_model.dart';
import 'package:money_manager/domain/transactions/model/transaction_db_model.dart';

abstract class TransationServices {
  Future<void> addTransction({required TransactionModel transaction});
  Future<List<TransactionModel>> getAllTransactions();
  Future<void> deleteTransaction({required int id});
  Future<void> updateTransaction({required TransactionModel newModel});
  Future<AccountModel> updateBal(
      {required List<TransactionModel> transactions, required String period});
  Future<List<TransactionModel>> filterTransactions(
      {required List<TransactionModel> transactions, required String period});
  Future<List<TransactionModel>> filterByPeriod(
      {required List<TransactionModel> transactions,
      required DateTime start,
      required DateTime end});
  List<TransactionModel> searchTransaction(
      {required List<TransactionModel> transactions,
      required String searchkey});
}
