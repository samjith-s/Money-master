import 'package:flutter/material.dart';
import 'package:money_manager/screens/addTransaction/add_screen.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/screens/Statiticsscreen/statitics_page.dart';
import 'package:money_manager/screens/categoryScreen/category_main_page.dart';
import 'package:money_manager/screens/profilePage/Profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../value_notifiers.dart';
import 'homeScreenCustomWidgets/home_screen_widgets.dart';
import 'home_page.dart';

TextStyle accountBalanceTextstyle = const TextStyle(
  fontFamily: 'Rokkitt-Thin',
  fontWeight: FontWeight.w600,
  fontSize: 20,
  color: appWhite,
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final List routes = const [
    HomePage(),
    StatiticsPage(),
    AddTransactionScreen(),
    MainCatogoryPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    takeNotificationBool();
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (BuildContext ctx, int index, Widget? _) {
        return Scaffold(
          backgroundColor: const Color(0xFF17191f),
          body: routes[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: appBlue),
            child: Visibility(
              visible: index == 2 ? false : true,
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  bottomNavBarItem(icon: Icons.home_outlined, label: 'Home'),
                  bottomNavBarItem(
                      icon: Icons.pie_chart_outline, label: 'Statitics'),
                  const BottomNavigationBarItem(
                      icon: AddIconButton(), label: ''),
                  bottomNavBarItem(
                      icon: Icons.category_outlined, label: 'Categories'),
                  bottomNavBarItem(icon: Icons.person_outline, label: 'Profile')
                ],
                currentIndex: index,
                onTap: (index) {
                  selectedIndexNotifier.value = index;
                  selectedIndexNotifier.notifyListeners();
                },
                selectedItemColor: appWhite,
                unselectedItemColor: Colors.grey,
                unselectedLabelStyle: const TextStyle(color: appBlue),
                type: BottomNavigationBarType.fixed,
              ),
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBarItem bottomNavBarItem(
      {required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}

takeNotificationBool() async {
  final SharedPreferences _pref = await SharedPreferences.getInstance();
  isNotificationOn = _pref.getBool('isNotificationOn') ?? true;
}
