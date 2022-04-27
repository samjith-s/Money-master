import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/screens/app_lock_screen.dart';
import 'package:money_manager/screens/profilePage/notification_functions.dart';
import 'package:money_manager/screens/splashScreen/app_splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../category_db/category_models.dart';
import '../../common_widgets.dart';
import '../../main.dart';
import '../../transaction_db/transaction_db_functions.dart';
import '../../transaction_db/transaction_db_model.dart';
import '../../user_db/user_db_fuctions.dart';
import '../../user_db/user_model.dart';
import '../../value_notifiers.dart';
import '../startingScreen/add_image_button.dart';
import '../startingScreen/starting_screen.dart';
import '../startingScreen/starting_screen_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(title: 'Your Profile'),
              //profile edit row
              SizedBox(
                height: 96,
                width: 100.w,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const UserProfilePicture(),
                          ValueListenableBuilder(
                              valueListenable: userDetailsNotifier,
                              builder: (BuildContext cnxt, UserModel model,
                                  Widget? _) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      model.name,
                                      style: const TextStyle(
                                          fontFamily: 'Rokkitt-Thin',
                                          fontSize: 22,
                                          color: appWhite,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      model.mobile,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: appWhite,
                                      ),
                                    )
                                  ],
                                );
                              })
                        ],
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          userEditPopUP(context);
                        },
                        icon: const Icon(
                          Icons.edit_outlined,
                          color: appWhite,
                        ),
                      )
                    ],
                  ),
                ),
              ), ////////////////////////////////////////////////////////////////////////////
              const InfoTitleProfilePage(
                text: 'App Settings',
              ),
              ////////////////////////////////////////////////////////////////////////

              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.lock_outlined,
                          color: appBlue,
                          size: 26,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'App Lock',
                          style: TextStyle(
                            fontFamily: 'AnticSlab',
                            fontSize: 19,
                            color: appWhite,
                          ),
                        )
                      ],
                    ),
                    const AppLockSwitch()
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.notifications_none_outlined,
                          color: appBlue,
                          size: 26,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontFamily: 'AnticSlab',
                            fontSize: 19,
                            color: appWhite,
                          ),
                        )
                      ],
                    ),
                    const NotificationSwitch()
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////////////
              SettingsItem(
                label: 'Reset everything',
                onTap: () async {
                  await showResetConfirmationPopup(context);
                },
                icon: Icons.recycling_outlined,
              ),
              SettingsItem(
                label: 'Share app',
                onTap: () {},
                icon: Icons.share_outlined,
              ),
              SettingsItem(
                label: 'Rate app',
                onTap: () {},
                icon: Icons.star_rate_outlined,
              ),
              SettingsItem(
                label: 'Feedback',
                onTap: () async {
                  await goToMail();
                },
                icon: Icons.mail_outline,
              ),
              SettingsItem(
                label: 'About us',
                onTap: () {
                  showMyAboutDialog(context);
                },
                icon: Icons.info_outline,
              )
            ],
          ),
        ),
      ),
      onWillPop: () {
        selectedIndexNotifier.value = 0;
        selectedIndexNotifier.notifyListeners();
        return Future.value(false);
      },
    );
  }

  Future<dynamic> userEditPopUP(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          nameController.text = userDetailsNotifier.value.name;
          numberController.text = userDetailsNotifier.value.mobile;
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                StartScreenFormField(
                  controller: nameController,
                  hint: 'Name',
                  validator: (value) {},
                  borderColor: appBlue,
                ),
                const SizedBox(
                  height: 20,
                ),
                StartScreenFormField(
                  controller: numberController,
                  hint: 'Mobile Number',
                  inputType: TextInputType.number,
                  validator: (value) {},
                  borderColor: appBlue,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AddImageButton(
                      childText: 'Image',
                      height: 40,
                    ),
                    SizedBox(
                      width: 20.w,
                      height: 40,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          side: const BorderSide(
                            color: appBlue,
                          ),
                        ),
                        onPressed: () {
                          if (nameController.text.trim() == '' ||
                              numberController.text.trim() == '') {
                            return;
                          }
                          UserModel model = UserModel(
                            name: nameController.text,
                            mobile: numberController.text,
                            image: pickedImageNotifier.value == ''
                                ? ''
                                : pickedImageNotifier.value,
                          );
                          addUser(model);
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(color: appBlue),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        });
  }

  void showMyAboutDialog(BuildContext context) {
    return showAboutDialog(
      context: context,
      applicationIcon: const Image(
        image: AssetImage('assets/images/wzicon.png'),
        width: 40,
        height: 40,
      ),
      applicationName: 'MoneyZen',
      applicationVersion: 'version 1.0.0',
      children: [
        const Text(
          'This application is build to help you to master your spending.',
          style: TextStyle(fontFamily: 'Rokkitt-Thin'),
        )
      ],
    );
  }

  Future<void> goToMail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'samjithbs@gmail.com',
      query: 'subject= &body=',
    );

    var url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                "Do you want to reset app?",
                style: TextStyle(color: Colors.black, fontFamily: 'AnticSlab'),
              ),
              const SizedBox(height: 10),
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
    final transactionDb =
        await Hive.openBox<TransactionModel>(transactionDbName);
    await transactionDb.clear();
    final userDb = await Hive.openBox<UserModel>(userDbName);
    await userDb.clear();
    final loginDb = await Hive.openBox('login_check');
    await loginDb.clear();
    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_cont) => const SplashScreen()),
    );
    selectedIndexNotifier.value = 0;
    numberController.text = '';
    nameController.text = '';
    pickedImageNotifier.value = '';
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  final String label;
  final bool showSwitch;
  const SettingsItem({
    Key? key,
    required this.label,
    this.showSwitch = false,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        child: Row(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: appBlue,
                  size: 26,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  label,
                  style: const TextStyle(
                      fontFamily: 'AnticSlab', fontSize: 19, color: appWhite),
                ),
              ],
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
      onTap: onTap,
    );
  }
}

class InfoTitleProfilePage extends StatelessWidget {
  final String text;
  const InfoTitleProfilePage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5, left: 20, right: 25),
      //margin:const EdgeInsets.symmetric( horizontal: 20),
      width: double.infinity,
      height: 30,
      // color: Color.fromARGB(255, 56, 56, 56),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontFamily: 'AnticSlab',
          color: Color.fromARGB(255, 167, 165, 165),
        ),
      ),
    );
  }
}

class NotificationSwitch extends StatefulWidget {
  const NotificationSwitch({
    Key? key,
  }) : super(key: key);

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  var value = isNotificationOn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 35,
      child: Switch(
        trackColor: MaterialStateProperty.all(Colors.grey),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: value,
        onChanged: (newValue) async {
          final SharedPreferences _pref = await SharedPreferences.getInstance();
          _pref.setBool('isNotificationOn', newValue);
          setState(() {
            value = newValue;
          });

          newValue
              ? sendNotification(
                  title: 'Hi ${userDetailsNotifier.value.name} 😍',
                  body: 'Don\'t forget to Add today\'s transactions',
                )
              : _cancelNotification();
        },
      ),
    );
  }
}

Future<void> _cancelNotification() async {
  await flutterLocalNotificationsPlugin.cancel(0);
}

class AppLockSwitch extends StatefulWidget {
  const AppLockSwitch({
    Key? key,
  }) : super(key: key);

  @override
  State<AppLockSwitch> createState() => _AppLockSwitchState();
}

class _AppLockSwitchState extends State<AppLockSwitch> {
  var value = password == 'false' ? false : true;

  @override
  Widget build(BuildContext context) {
    void changeValue(bool change) {
      setState(() {
        value = change;
      });
    }

    return SizedBox(
      height: 20,
      width: 35,
      child: Switch(
        trackColor: MaterialStateProperty.all(Colors.grey),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: value,
        onChanged: (newValue) async {
          SharedPreferences _pref = await SharedPreferences.getInstance();

          setState(() {
            value = newValue;
          });
          newValue
              ? setPasscodeScreen(context,
                  opaque: true, changevalue: changeValue)
              : disableApplock(_pref);
        },
      ),
    );
  }

  disableApplock(SharedPreferences _pref) {
    _pref.setString('password', 'false');
    password = 'false';
    passwordNotifier.value = '';
  }
}
