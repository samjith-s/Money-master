import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/user_details/user_details_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../application/allrounder/allrounder_bloc.dart';
import '../../common_widgets.dart';
import '../homeScreen/home_page.dart';
import 'package:launch_review/launch_review.dart';
import 'widgets/applock_switch_widget.dart';
import 'widgets/edit_user_popup_widget_funtion.dart';
import 'widgets/info_title_profilepage_widget.dart';
import 'widgets/notification_switch_widgets.dart';
import 'widgets/reset_app_data_functions.dart';
import 'widgets/settings_item_widget.dart';
import 'widgets/show_about_dialog_function.dart';

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
}
