import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/application/allrounder/allrounder_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../app_lock_screen.dart';
import '../homeScreen/common_scafforld_home.dart';
import '../onBoardingScreens/first_onborading_screen.dart';
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
    BlocProvider.of<AllrounderBloc>(context).add(AllrounderEvent.turnOnApplock(
        isApplockenabled: password == 'false' ? false : true));
    if (password != 'false') {
      await showLockScreen(context, opaque: true);
    } else {
      choosePage(context);
    }
  }
}

late String password;

Future<void> choosePage(context) async {
  final loginDb = await Hive.openBox('login_check');
  var isloged = loginDb.get(userCheckKey);
  isloged == true
      ? Future.delayed(
          const Duration(
            milliseconds: 1500,
          ),
          () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => HomeScreen(),
            ),
          ),
        )
      : Future.delayed(
          const Duration(
            milliseconds: 1500,
          ),
          () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => const MainOnBoarding(),
            ),
          ),
        );
}
