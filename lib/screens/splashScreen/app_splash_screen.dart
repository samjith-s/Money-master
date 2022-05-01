import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/screens/homeScreen/common_scafforld_home.dart';
import 'package:money_manager/screens/onBoardingScreens/first_onborading_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../app_lock_screen.dart';
import '../startingScreen/starting_screen_widgets.dart';

String userCheckKey = 'IsUserLoggenIn';
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/images/wzicon.png'),
              width: 25.w,
            ),
            const MoneyMasterName()
          ],
        ),
      ),
    );
  }

  Future<void> checkLogin(context) async {
    final SharedPreferences _pref = await SharedPreferences.getInstance();
    password = _pref.getString('password') ?? 'false';
    if (password != 'false') {
      await showLockScreen(context, opaque: true);
    } else {
      choosePage(context);
    }
  }
}

late String password;
Future<void> gotoNextScreen({context, page}) async {
  Future.delayed(
    const Duration(
      milliseconds: 1500,
    ),
    () => Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => page,
      ),
    ),
  );
}

Future<void> choosePage(context) async {
  final loginDb = await Hive.openBox('login_check');
  var isloged = loginDb.get(userCheckKey);
  isloged == true
      ? gotoNextScreen(
          context: context,
          page: const HomeScreen(),
        )
      : gotoNextScreen(
          context: context,
          page: const MainOnBoarding(),
        );
}
