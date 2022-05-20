import 'package:flutter/material.dart';

import '../../homeScreen/home_page.dart';

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
