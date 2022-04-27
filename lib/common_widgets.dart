import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'config/constant_colors.dart';
import 'user_db/user_model.dart';
import 'value_notifiers.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      height: 55,
      width: 100.w,
      color: appBlue,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              selectedIndexNotifier.value = 0;
              selectedIndexNotifier.notifyListeners();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: appWhite,
            ),
            padding: const EdgeInsets.only(
              right: 25,
            ),
            constraints: const BoxConstraints(),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 21,
              color: appWhite,
              fontFamily: 'RobotoCondensed',
            ),
          ),
        ],
      ),
    );
  }
}

class UserProfilePicture extends StatelessWidget {
  const UserProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: userDetailsNotifier,
      builder: (BuildContext context, UserModel model, Widget? _) {
        return Container(
          margin: const EdgeInsets.only(right: 10),
          width: 60,
          height: 60,
          child: model.image == ''
              ? const Icon(
                  Icons.account_circle,
                  size: 60,
                  color: appWhite,
                )
              : const SizedBox(),
          decoration: model.image == ''
              ? const BoxDecoration()
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: FileImage(
                      File(
                        model.image!,
                      ),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
        );
      },
    );
  }
}
