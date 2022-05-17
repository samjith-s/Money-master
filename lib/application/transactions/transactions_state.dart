part of 'transactions_bloc.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    required List<TransactionModel> transactionsList,
    required List<TransactionModel> filteredList,
    required AccountModel account, 
    required String? filterDropdownValue,
    required bool showFilterList,
    
  }) = _TransactionsState;

  factory TransactionsState.initial() =>
       TransactionsState(transactionsList: [],account: AccountModel(expense: 0,income: 0,period: ''),filteredList: [],filterDropdownValue: null,showFilterList: false);
}
