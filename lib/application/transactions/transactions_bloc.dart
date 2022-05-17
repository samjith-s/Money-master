import 'dart:developer';

import 'package:bloc/bloc.dart';
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
    on<AddTransaction>((event, emit) async {
      await _transationServices.addTransction(transaction: event.model);
      add(const TransactionsEvent.getAllTransactions());
    });
    on<DeleteTransaction>((event, emit) async {
      await _transationServices.deleteTransaction(id: event.id);
      add(const TransactionsEvent.getAllTransactions());
    });
    on<UpdateTransaction>((event, emit) async {
      await _transationServices.addTransction(transaction: event.newModel);
      add(const TransactionsEvent.getAllTransactions());
    });
    on<GetAllTransactions>((event, emit) async {
      List<TransactionModel> dbValues =
          await _transationServices.getAllTransactions();
      AccountModel account = await _transationServices.updateBal(
          transactions: dbValues, period: 'All time');
      emit(state.copyWith(
        transactionsList: dbValues,
        account: account,
        filteredList: [],
        showFilterList: false,
      ));
    });
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
    on<ChangeFilterDDValue>(((event, emit) {
      emit(state.copyWith(filterDropdownValue: event.newValue));
    }));

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

    on<SearchTransaction>(((event, emit) {
      List<TransactionModel> searchResult =
          _transationServices.searchTransaction(
              transactions: state.transactionsList, searchkey: event.searchKey);
      print('search result=${searchResult}');
      emit(state.copyWith(filteredList: searchResult, showFilterList: true));
    }));
  }
}
