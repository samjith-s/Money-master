import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'onboarding_image.dart';
import 'onboarding_screens_decorations.dart';
import 'start_now_button.dart';

class MainOnBoarding extends StatelessWidget {
  const MainOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntroductionScreen(
        globalFooter: const StartNowButton(),
        pages: listPageViewModel,
        showNextButton: false,
        showDoneButton: false,
        dotsDecorator: dotsDecorator,
      ),
    ); //
  }
}

final List<PageViewModel> listPageViewModel = [
  PageViewModel(
    title: "Track Your Spendings",
    body: "Analiyze your transactions\naccurately and fast.",
    image: const OnboardinImage(path: 'assets/images/notification.png'),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Graphical representations",
    body:
        "Have a better understanding of your transactions with\nthe help of charts.",
    image: const OnboardinImage(
      path: 'assets/images/pichart.jpg',
    ),
    decoration: pageDecoration,
  )
];
