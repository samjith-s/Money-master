import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/application/allrounder/allrounder_bloc.dart';
import 'package:money_manager/application/transactions/transactions_bloc.dart';
import 'package:money_manager/application/user_details/user_details_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/domain/core/dependency_injection/injectable.dart';
import 'package:sizer/sizer.dart';
import 'application/categories/categories_bloc.dart';
import 'config/constant_db_names.dart';
import 'domain/categories/model/category_db_model.dart';
import 'domain/transactions/model/transaction_db_model.dart';
import 'domain/user/model/user_model.dart';
import 'presentation/screens/splashScreen/app_splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();

  Hive.initFlutter(categoryDbName);

  await Hive.initFlutter('login_check');

  Hive.initFlutter(transactionDbName);

  if (!Hive.isAdapterRegistered(CategorytypeAdapter().typeId)) {
    Hive.registerAdapter(CategorytypeAdapter());
  }

  if (!Hive.isAdapterRegistered(CategoryModelAdapter().typeId)) {
    Hive.registerAdapter(CategoryModelAdapter());
  }

  if (!Hive.isAdapterRegistered(TransactionModelAdapter().typeId)) {
    Hive.registerAdapter(TransactionModelAdapter());
  }

  if (!Hive.isAdapterRegistered(UserModelAdapter().typeId)) {
    Hive.registerAdapter(UserModelAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage('assets/images/wzicon.png'), context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: appBlue),
    );
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<TransactionsBloc>()),
          BlocProvider(create: (context) => getIt<CategoriesBloc>()),
          BlocProvider(create: (context) => UserDetailsBloc()),
          BlocProvider(create: (context) => AllrounderBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
        ),
      );
    });
  }
}
