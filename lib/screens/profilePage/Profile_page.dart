import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:sizer/sizer.dart';
import '../../common_widgets.dart';
import '../../user_db/user_model.dart';
import '../../value_notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Column(
        children: [
          const CustomAppBar(title: 'Your Profile'),
          //profile edit row
          SizedBox(
            height: 96,
            width: 100.w,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const UserProfilePicture(),
                      ValueListenableBuilder(
                          valueListenable: userDetailsNotifier,
                          builder:
                              (BuildContext cnxt, UserModel model, Widget? _) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  model.name,
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'RobotoCondensed',
                                      fontWeight: FontWeight.w400,
                                      color: appWhite),
                                ),
                                Text(
                                  '+91 ${model.mobile}',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: appWhite),
                                )
                              ],
                            );
                          })
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_outlined,
                      color: appWhite,
                    ),
                  )
                ],
              ),
            ),
          ),
          //account Information text area
          const InfoTitleProfilePage(
            text: 'Settings',
          ),
          SettingsItem(
            showSwitch: true,
            label: 'App lock',
            itsFunction: () {},
            icon: Icons.lock_outlined,
          ),
          SettingsItem(
            label: 'Notifications',
            itsFunction: () {},
            showSwitch: true,
            icon: Icons.notifications_none_outlined,
          ),
          SettingsItem(
            label: 'Reset everything',
            itsFunction: () {},
            icon: Icons.recycling_outlined,
          ),
          SettingsItem(
            label: 'Share app',
            itsFunction: () {},
            icon: Icons.share_outlined,
          ),
          SettingsItem(
            label: 'Rate app',
            itsFunction: () {},
            icon: Icons.star_rate_outlined,
          ),
          SettingsItem(
            label: 'Feedback',
            itsFunction: () {},
            icon: Icons.mail_outline,
          ),
          SettingsItem(
              label: 'About us', itsFunction: () {}, icon: Icons.info_outline)
        ],
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final Function itsFunction;
  final String label;
  final bool showSwitch;
  const SettingsItem({
    Key? key,
    required this.label,
    this.showSwitch = false,
    required this.itsFunction,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    fontFamily: 'Roboto', fontSize: 19, color: appWhite),
              )
            ],
          ),
          Visibility(
            visible: showSwitch,
            child: SwitchSettings(
              itsFunction: itsFunction,
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
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
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      height: 40,
      color: const Color.fromARGB(255, 19, 18, 18),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontFamily: 'Roboto',
          color: Color.fromARGB(255, 167, 165, 165),
        ),
      ),
    );
  }
}

class SwitchSettings extends StatefulWidget {
  final Function itsFunction;
  const SwitchSettings({Key? key, required this.itsFunction}) : super(key: key);

  @override
  State<SwitchSettings> createState() => _SwitchSettingsState();
}

class _SwitchSettingsState extends State<SwitchSettings> {
  var value = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Switch(
        trackColor: MaterialStateProperty.all(Colors.grey),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: value,
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
          widget.itsFunction();
        },
      ),
    );
  }
}
