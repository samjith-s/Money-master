
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../application/allrounder/allrounder_bloc.dart';
import '../../../../application/user_details/user_details_bloc.dart';
import '../../../../main.dart';
import '../../homeScreen/home_page.dart';
import '../notification_functions.dart';

class NotificationSwitch extends StatelessWidget {
  const NotificationSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, userState) {
        return SizedBox(
          height: height * .02659,
          width: 35,
          child: BlocBuilder<AllrounderBloc, AllrounderState>(
            builder: (context, state) {
              return Switch(
                trackColor: MaterialStateProperty.all(Colors.grey),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: state.isNotificationOn,
                onChanged: (newValue) async {
                  final SharedPreferences _pref =
                      await SharedPreferences.getInstance();
                  _pref.setBool('isNotificationOn', newValue);
                  BlocProvider.of<AllrounderBloc>(context)
                      .add(TurnOnNotification(isNotificationOn: newValue));
                  newValue
                      ? sendNotification(
                          title: 'Hi ${userState.model.name} 😍',
                          body: 'Don\'t forget to Add today\'s transactions',
                        )
                      : _cancelNotification();
                },
              );
            },
          ),
        );
      },
    );
  }
}

Future<void> _cancelNotification() async {
  await flutterLocalNotificationsPlugin.cancel(0);
}
