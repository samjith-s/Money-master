import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/user_db/user_model.dart';

import '../value_notifiers.dart';

String userDbName = 'user_database';

Future<void> addUser(UserModel value) async {
  final userDb = await Hive.openBox<UserModel>(userDbName);
  userDb.put(value.mobile[0], value);
}

Future<void> getUserDetials() async {
  final userDb = await Hive.openBox<UserModel>(userDbName);
  if (userDb.values.isNotEmpty) {
  userDetailsNotifier.value = userDb.values.first;
  userDetailsNotifier.notifyListeners();

  }
}

Future<void> updateUserDetials(UserModel model) async {
  final userDb = await Hive.openBox<UserModel>(userDbName);
  userDb.put(userDetailsNotifier.value.mobile[0], model);
  getUserDetials();
}
