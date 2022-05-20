import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:money_manager/domain/transactions/model/account_class_model.dart';
import 'package:money_manager/domain/transactions/transactions_services.dart';

import '../../domain/transactions/model/transaction_db_model.dart';
import '../../presentation/screens/detailsPage/transaction_details_page.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';
part 'transactions_bloc.freezed.dart';

@injectable
class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final TransationServices _transationServices;
  TransactionsBloc(this._transationServices)
      : super(TransactionsState.initial()) {

    //adding a new transaction to the database
    on<AddTransaction>((event, emit) async {
      await _transationServices.addTransction(transaction: event.model);
      add(const TransactionsEvent.getAllTransactions());
    });

    //deleting a transaction from the database
    on<DeleteTransaction>((event, emit) async {
      await _transationServices.deleteTransaction(id: event.id);
      int count = 0;
      Navigator.of(event.context).popUntil((_) => count++ >= 2);
      add(const TransactionsEvent.getAllTransactions());
    });

    //updateing a specific transaction model in the database 
    on<UpdateTransaction>((event, emit) async {
      await _transationServices.addTransction(transaction: event.newModel);
      add(const TransactionsEvent.getAllTransactions());
    });

    //taking all the transactions from the database, sorting it and emit to the state
    on<GetAllTransactions>((event, emit) async {
      List<TransactionModel> dbValues =
          await _transationServices.getAllTransactions();
      dbValues.sort((first, second) => second.date.compareTo(first.date));
      //updating account balance when any operation has done
      AccountModel account = await _transationServices.updateBal(
          transactions: dbValues, period: 'All time');
      emit(state.copyWith(
        transactionsList: dbValues,
        account: account,
        filteredList: [],
        showFilterList: false,
      ));
    });

    //filtering the state transaction list and assining the values to states filter list when homepage filter dropdown value changes
    on<FilterTransactions>(
      (event, emit) async {
        List<TransactionModel> filterResult =
            await _transationServices.filterTransactions(
                period: event.period, transactions: state.transactionsList);
        AccountModel account = await _transationServices.updateBal(
            transactions: filterResult, period: event.period);
        log(filterResult.toString());
        emit(state.copyWith(
            filteredList: filterResult,
            account: account,
            showFilterList: true));
      },
    );

    //changing home page filter dropdown value
    on<ChangeFilterDDValue>(((event, emit) {
      emit(state.copyWith(filterDropdownValue: event.newValue));
    }));

    //updating filter list according to selected date period
    on<FilterByPeriod>(
      (event, emit) async {
        List<TransactionModel> filterResult =
            await _transationServices.filterByPeriod(
          start: event.start,
          end: event.end,
          transactions: state.transactionsList,
        );
        var _start = parseDate(event.start);
        var _end = parseDate(event.end);
        AccountModel account = await _transationServices.updateBal(
            transactions: filterResult, period: '$_start - $_end');
        log(filterResult.toString());
        emit(
          state.copyWith(
            filteredList: filterResult,
            account: account,
            showFilterList: true,
            filterDropdownValue: null,
          ),
        );
      },
    );
    //CHANGING STATE FILTER LIST WHEN SEARCH HAPPENS IN HOMEPAGE
    on<SearchTransaction>(((event, emit) {
      List<TransactionModel> searchResult =
          _transationServices.searchTransaction(
              transactions: state.transactionsList, searchkey: event.searchKey);
      print('search result=${searchResult}');
      emit(state.copyWith(filteredList: searchResult, showFilterList: true));
    }));
  }
}
