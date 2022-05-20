part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.getAllTransactions() = GetAllTransactions;
  
  const factory TransactionsEvent.addTransaction(
      {required TransactionModel model}) = AddTransaction;

  const factory TransactionsEvent.deleteTransaction({required int id,required BuildContext context}) =
      DeleteTransaction;
  const factory TransactionsEvent.updateTransaction(
      {required TransactionModel newModel}) = UpdateTransaction;
  const factory TransactionsEvent.filterTransactions({required String period}) =
      FilterTransactions;
  const factory TransactionsEvent.changeFilterDDValue(
      {required String? newValue}) = ChangeFilterDDValue;
  const factory TransactionsEvent.filterByPeriod(
      {required DateTime start, required DateTime end}) = FilterByPeriod;

  const factory TransactionsEvent.searchTransaction(
      {required String searchKey}) = SearchTransaction;
}
