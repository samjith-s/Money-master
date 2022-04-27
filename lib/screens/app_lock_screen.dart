import 'dart:async';
import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/screens/splashScreen/app_splash_screen.dart';
import 'package:passcode_screen/circle.dart';
import 'package:passcode_screen/keyboard.dart';
import 'package:passcode_screen/passcode_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

final StreamController<bool> verificationNotifier =
    StreamController<bool>.broadcast();

showLockScreen(BuildContext context,
    {required bool opaque, List<String>? digits}) async {
  Navigator.push(
    context,
    PageRouteBuilder(
      opaque: opaque,
      pageBuilder: (ctx, animation, secondaryAnimation) => PasscodeScreen(
        isValidCallback: () async {
          await choosePage(context);
        },
        title: const Text(
          'Enter Passcode',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        circleUIConfig: const CircleUIConfig(),
        keyboardUIConfig: const KeyboardUIConfig(),
        passwordEnteredCallback: passcodeEntered,
        cancelButton: const Text(
          'Cancel',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          semanticsLabel: 'Cancel',
        ),
        deleteButton: const Text(
          'Delete',
          style: TextStyle(fontSize: 16, color: Colors.white),
          semanticsLabel: 'Delete',
        ),
        shouldTriggerVerification: verificationNotifier.stream,
        backgroundColor: Colors.black.withOpacity(0.8),
        cancelCallback: () {
          passcodeCancelled(context);
        },
        digits: digits,
        passwordDigits: 6,
        // bottomWidget: passcodeRestoreButton(context),
      ),
    ),
  );
}

passcodeEntered(String enteredPasscode) {
  bool isValid = password == enteredPasscode;
  verificationNotifier.add(isValid);
  if (isValid) {}
}

passcodeCancelled(context) {
  Navigator.maybePop(context);
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

final StreamController<bool> verificationNotifier1 =
    StreamController<bool>.broadcast();

setPasscodeScreen(BuildContext context,
    {required bool opaque, List<String>? digits, changevalue}) async {
  Navigator.push(
    context,
    PageRouteBuilder(
      opaque: opaque,
      pageBuilder: (ctx, animation, secondaryAnimation) => PasscodeScreen(
        isValidCallback: () async {
          SharedPreferences _pref = await SharedPreferences.getInstance();
          _pref.setString('password', passwordNotifier.value);
          error = '';
        },
        title: ValueListenableBuilder(
            valueListenable: passwordNotifier,
            builder: (BuildContext ctxt, String input, Widget? _) {
              return Text(
                input == '' ? 'Enter Passcode' : 'Confirm Password',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 28),
              );
            }),
        circleUIConfig: const CircleUIConfig(),
        keyboardUIConfig: const KeyboardUIConfig(),
        passwordEnteredCallback: setpasscodeEntered,
        cancelButton: const Text(
          'Cancel',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          semanticsLabel: 'Cancel',
        ),
        deleteButton: const Text(
          'Delete',
          style: TextStyle(fontSize: 16, color: Colors.white),
          semanticsLabel: 'Delete',
        ),
        shouldTriggerVerification: verificationNotifier1.stream,
        backgroundColor: Colors.black.withOpacity(0.8),
        cancelCallback: () {
          setpasscodeCancelled(context, changevalue);
        },
        digits: digits,
        passwordDigits: 6,
        bottomWidget: ValueListenableBuilder(
          valueListenable: passwordNotifier,
          builder: (BuildContext ctx, String value, Widget? _) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                error ?? '',
                style: const TextStyle(
                  color: appWhite,
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}

String? error;
ValueNotifier<String> passwordNotifier = ValueNotifier('');
setpasscodeEntered(String enteredPasscode) {
  if (passwordNotifier.value != '' &&
      passwordNotifier.value != enteredPasscode) {
    error = 'Please Enter the same passcode to confirm';
    passwordNotifier.value = '';
    passwordNotifier.notifyListeners();
  }
  bool isValid = passwordNotifier.value == enteredPasscode;
  passwordNotifier.value = enteredPasscode;

  verificationNotifier1.add(isValid);
  if (isValid) {}
}

setpasscodeCancelled(context, changevalue) {
  Navigator.maybePop(context);
  changevalue(false);
  passwordNotifier.value = '';
  error = null;
}
