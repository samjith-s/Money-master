import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/screens/startingScreen/starting_screen.dart';
import 'package:sizer/sizer.dart';

class StartNowButton extends StatelessWidget {
  const StartNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      height: 43,
      width: 42.w,
      child: OutlinedButton(
        onPressed: () {
          gotoLoginPage(context);
        },
        child: const Text(
          "START NOW",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            color: appBlue,
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 1.0, color: appBlue),
        ),
      ),
    );
  }

  void gotoLoginPage(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const StartScreen()),
        (route) => false);
  }
}
