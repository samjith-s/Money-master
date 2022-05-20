import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../application/allrounder/allrounder_bloc.dart';
import '../../app_lock_screen.dart';
import '../../homeScreen/home_page.dart';
import '../../splashScreen/app_splash_screen.dart';

class AppLockSwitch extends StatelessWidget {
  const AppLockSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .02659,
      width: 35,
      child: BlocBuilder<AllrounderBloc, AllrounderState>(
        builder: (context, state) {
          return Switch(
            trackColor: MaterialStateProperty.all(Colors.grey),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: state.isApplockenabled,
            onChanged: (newValue) async {
              SharedPreferences _pref = await SharedPreferences.getInstance();
              BlocProvider.of<AllrounderBloc>(context)
                  .add(TurnOnApplock(isApplockenabled: newValue));
              newValue
                  ? setPasscodeScreen(
                      context,
                      opaque: true,
                    )
                  : disableApplock(_pref, context);
            },
          );
        },
      ),
    );
  }

  disableApplock(SharedPreferences _pref, context) {
    _pref.setString('password', 'false');
    password = 'false';
    BlocProvider.of<AllrounderBloc>(context)
        .add(const TurnOnApplock(isApplockenabled: false));
    passwordNotifier.value = '';
  }
}
