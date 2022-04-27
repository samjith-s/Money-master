import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:money_manager/config/constant_colors.dart';

PageDecoration pageDecoration = const PageDecoration(
  //pageColor: Colors.grey,
  imagePadding: EdgeInsets.only(top: 200),
  titlePadding: EdgeInsets.only(bottom: 24, top: 10),
  imageFlex: 3,
  bodyFlex: 2,
  footerPadding: EdgeInsets.only(bottom: 100),
  titleTextStyle: TextStyle(fontFamily: 'AnticSlab', fontSize: 24.5,fontWeight: FontWeight.w400 ),
  bodyTextStyle: TextStyle(
    fontFamily: 'AnticSlab',
    fontSize: 21,
    color: appBlue,
  ),
);

DotsDecorator dotsDecorator = const DotsDecorator(
  color: Color.fromARGB(255, 206, 202, 202),
  activeColor: Color.fromARGB(255, 104, 102, 102),
  spacing: EdgeInsets.only(bottom: 0, left: 10),
  size: Size(16, 16),
  activeSize: Size(17, 17),
);
