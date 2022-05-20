import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../application/allrounder/allrounder_bloc.dart';
import '../../../../config/constant_colors.dart';
import '../../../../config/constant_db_names.dart';
import '../../../../domain/categories/model/category_db_model.dart';
import '../../../../domain/transactions/model/transaction_db_model.dart';
import '../../../../domain/user/model/user_model.dart';
import '../../homeScreen/home_page.dart';
import '../../splashScreen/app_splash_screen.dart';
import '../../startingScreen/add_image_button.dart';
import '../../startingScreen/starting_screen.dart';

Future<void> showResetConfirmationPopup(BuildContext context) async {
  showDialog(
    context: context,
    builder: (_context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "All app data will be deleted?",
              style: TextStyle(color: Colors.black, fontFamily: 'AnticSlab'),
            ),
            SizedBox(height: height * .013297),
            const Text(
              'Are you sure?',
              style: TextStyle(color: Colors.black, fontFamily: 'AnticSlab'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('No',
                      style:
                          TextStyle(fontFamily: 'AnticSlab', color: appBlue)),
                ),
                TextButton(
                  onPressed: () async {
                    await resetApplicationData(context);
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      fontFamily: 'AnticSlab',
                      color: appBlue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.grey,
        contentPadding: const EdgeInsets.all(20),
      );
    },
  );
}

Future<void> resetApplicationData(BuildContext context) async {
  final categoryDb = await Hive.openBox<CategoryModel>(categoryDbName);
  await categoryDb.clear();
  final transactionDb = await Hive.openBox<TransactionModel>(transactionDbName);
  await transactionDb.clear();
  final userDb = await Hive.openBox<UserModel>(userDbName);
  await userDb.clear();
  final loginDb = await Hive.openBox('login_check');
  await loginDb.clear();
  await Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_cont) => const SplashScreen()),
  );
  BlocProvider.of<AllrounderBloc>(context)
      .add(const AllrounderEvent.navigate(pageIndex: 0));
  numberController.text = '';
  nameController.text = '';
  pickedImageNotifier.value = '';
}
