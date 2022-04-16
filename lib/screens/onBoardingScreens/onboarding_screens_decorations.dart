import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageDecoration pageDecoration = const PageDecoration(
  imagePadding: EdgeInsets.only(top: 200),
  titlePadding: EdgeInsets.only(bottom: 24, top: 10),
  imageFlex: 3,
  bodyFlex: 2,
  footerPadding: EdgeInsets.only(bottom: 100),
  titleTextStyle: TextStyle(fontFamily: 'NovaFlat', fontSize: 24.5),
  bodyTextStyle: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 21,
    color: Color.fromARGB(255, 95, 95, 95),
  ),
);

DotsDecorator dotsDecorator = const DotsDecorator(
  color: Color.fromARGB(255, 206, 202, 202),
  activeColor: Color.fromARGB(255, 104, 102, 102),
  spacing: EdgeInsets.only(bottom: 0, left: 10),
  size: Size(16, 16),
  activeSize: Size(17, 17),
);
