import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/application/user_details/user_details_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
// import 'package:money_manager/screens/app_lock_screen.dart';
// import 'package:money_manager/screens/profilePage/notification_functions.dart';
// import 'package:money_manager/screens/splashScreen/app_splash_screen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
// import '../../category_db/category_models.dart';
// import '../../../category_db/category_models.dart';
import '../../../application/allrounder/allrounder_bloc.dart';
import '../../../domain/categories/model/category_db_model.dart';
import '../../../domain/transactions/model/transaction_db_model.dart';
import '../../../domain/user/model/user_model.dart';
import '../../../main.dart';
import '../../common_widgets.dart';
// import '../../main.dart';
import '../../transaction_db/transaction_db_functions.dart';
// import '../../transaction_db/transaction_db_model.dart';
import '../../user_db/user_db_fuctions.dart';
// import '../../user_db/user_model.dart';
import '../../value_notifiers.dart';
import '../app_lock_screen.dart';
import '../homeScreen/home_page.dart';
import '../splashScreen/app_splash_screen.dart';
import '../startingScreen/add_image_button.dart';
import '../startingScreen/starting_screen.dart';
import '../startingScreen/starting_screen_widgets.dart';
import 'package:launch_review/launch_review.dart';

import 'notification_functions.dart';

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
                height: height * .12765,
                width: 100.w,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20),
                  child: BlocBuilder<UserDetailsBloc, UserDetailsState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              UserProfilePicture(
                                image: state.model.image!,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.model.name,
                                    style: const TextStyle(
                                        fontFamily: 'Rokkitt-Thin',
                                        fontSize: 22,
                                        color: appWhite,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    state.model.mobile,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: appWhite,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              userEditPopUP(context, state.model);
                            },
                            icon: const Icon(
                              Icons.edit_outlined,
                              color: appWhite,
                            ),
                          )
                        ],
                      );
                    },
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
                onTap: () {
                  Share.share(
                      'https://play.google.com/store/apps/details?id=in.bototype.moneyzen');
                },
                icon: Icons.share_outlined,
              ),
              SettingsItem(
                label: 'Rate app',
                onTap: () {
                  LaunchReview.launch(
                    androidAppId: "in.bototype.moneyzen",
                    iOSAppId: "585027354",
                  );
                },
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
        BlocProvider.of<AllrounderBloc>(context)
            .add(const AllrounderEvent.navigate(pageIndex: 0));
        return Future.value(false);
      },
    );
  }

  Future<dynamic> userEditPopUP(BuildContext context, UserModel user) {
    return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          nameController.text = user.name;
          numberController.text = user.mobile;
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
                SizedBox(height: height * .02659),
                StartScreenFormField(
                  controller: numberController,
                  hint: 'Mobile Number',
                  inputType: TextInputType.number,
                  validator: (value) {},
                  borderColor: appBlue,
                ),
                SizedBox(height: height * .02659),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddImageButton(childText: 'Image', height: height * .05319),
                    SizedBox(
                      width: 20.w,
                      height: height * .05319,
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
                          BlocProvider.of<UserDetailsBloc>(context).add(
                              UserDetailsEvent.updateUser(newModel: model));
                          // addUser(model);
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
                SizedBox(height: height * .02659),
              ],
            ),
          );
        });
  }

  void showMyAboutDialog(BuildContext context) {
    return showAboutDialog(
      context: context,
      applicationIcon: Image(
          image: const AssetImage('assets/images/wzicon.png'),
          width: height * .02659,
          height: height * .02659),
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
                "All app data will be deleted?",
                style: TextStyle(color: Colors.black, fontFamily: 'AnticSlab'),
              ),
              SizedBox(height: height * .013297),
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
    BlocProvider.of<AllrounderBloc>(context)
        .add(const AllrounderEvent.navigate(pageIndex: 0));
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
      height: height * .03989,
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
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        return SizedBox(
          height: height * .02659,
          width: 35,
          child: Switch(
            trackColor: MaterialStateProperty.all(Colors.grey),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            onChanged: (newValue) async {
              final SharedPreferences _pref =
                  await SharedPreferences.getInstance();
              _pref.setBool('isNotificationOn', newValue);
              setState(() {
                value = newValue;
              });

              newValue
                  ? sendNotification(
                      title: 'Hi ${state.model.name} 😍',
                      body: 'Don\'t forget to Add today\'s transactions',
                    )
                  : _cancelNotification();
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
      height: height * .02659,
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
