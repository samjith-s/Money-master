import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/screens/homeScreen/common_scafforld_home.dart';
import 'package:money_manager/screens/onBoardingScreens/first_onborading_screen.dart';
import 'package:sizer/sizer.dart';
import '../../user_db/user_db_fuctions.dart';
import '../startingScreen/starting_screen_widgets.dart';

String userCheckKey = 'IsUserLoggenIn';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLogin(context);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("splash page rebuild");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/images/walletimage.jpg'),
              width: 55.w,
            ),
            const SizedBox(
              height: 15,
            ),
            const MoneyMasterName()
          ],
        ),
      ),
    );
  }

  Future<void> gotoNextScreen({context, page}) async {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => page,
        ),
      ),
    );
  }

  Future<void> checkLogin(context) async {
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
}
