import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:money_manager/main.dart';

void sendNotification({String? title, String? body}) async {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
    requestSoundPermission: true,
    requestBadgePermission: true,
    requestAlertPermission: true,
  );
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_channel',
    'High_Importance_Notification',
    description: 'this channel use for important notification',
    importance: Importance.max,
  );

  final styleInformation = BigPictureStyleInformation(
    const DrawableResourceAndroidBitmap('notification'),
    // largeIcon: const DrawableResourceAndroidBitmap('wzlogo'),
    contentTitle: title,
    summaryText: body,
  );
  flutterLocalNotificationsPlugin.periodicallyShow(
    0,
    title,
    body,
    RepeatInterval.daily,
    NotificationDetails(
      android: AndroidNotificationDetails(
        channel.id,
        channel.name,
        channelDescription: channel.description,
        styleInformation: styleInformation,
        priority: Priority.high,
        importance: Importance.high,
      ),
    ),
    androidAllowWhileIdle: true,
  );
}

Future<void> cancelNotification() async {
  await flutterLocalNotificationsPlugin.cancel(0);
}
