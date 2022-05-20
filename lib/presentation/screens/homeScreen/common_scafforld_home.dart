import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/allrounder/allrounder_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Statiticsscreen/statitics_page.dart';
import '../addTransaction/add_screen.dart';
import '../categoryScreen/category_main_page.dart';
import '../profilePage/Profile_page.dart';
import 'home_page.dart';
import 'widgets/home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List routes = [
    const HomePage(),
    const StatiticsPage(),
    AddTransactionScreen(),
    const MainCatogoryPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    takeNotificationBool(context);
    return BlocBuilder<AllrounderBloc, AllrounderState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFF17191f),
          body: routes[state.bottomNavIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: appBlue),
            child: Visibility(
              visible: state.bottomNavIndex == 2 ? false : true,
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
                currentIndex: state.bottomNavIndex,
                onTap: (index) {
                  BlocProvider.of<AllrounderBloc>(context)
                      .add(AllrounderEvent.navigate(pageIndex: index));
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

takeNotificationBool(context) async {
  final SharedPreferences _pref = await SharedPreferences.getInstance();
  bool isNotificationOn = _pref.getBool('isNotificationOn') ?? true;
  BlocProvider.of<AllrounderBloc>(context).add(
      AllrounderEvent.turnOnNotification(
          isNotificationOn: isNotificationOn ));
}

TextStyle accountBalanceTextstyle = const TextStyle(
  fontFamily: 'Rokkitt-Thin',
  fontWeight: FontWeight.w600,
  fontSize: 20,
  color: appWhite,
);
