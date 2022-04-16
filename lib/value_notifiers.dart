import 'package:flutter/material.dart';

import 'category_db/category_models.dart';
import 'screens/detailsPage/transaction_details_page.dart';
import 'transaction_db/transaction_db_functions.dart';
import 'transaction_db/transaction_db_model.dart';
import 'user_db/user_model.dart';

ValueNotifier<List<CategoryModel>> incomeListNotifier = ValueNotifier([]);
ValueNotifier<List<CategoryModel>> expenseListNotifier = ValueNotifier([]);
ValueNotifier<Categorytype> groupValueNotifier =
    ValueNotifier(Categorytype.income);
ValueNotifier selectedValueNotifier = ValueNotifier('Income');
ValueNotifier<TransactionModel> detailsNotifier = ValueNotifier(obj);
ValueNotifier<List<TransactionModel>> transactionListNotifier =
    ValueNotifier([]);
ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
ValueNotifier<AccountModel> accountDetailsNotifier =
    ValueNotifier(AccountModel());
ValueNotifier<UserModel> userDetailsNotifier =
    ValueNotifier(UserModel(name: '', mobile: '', image: ''));
