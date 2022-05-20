import 'package:flutter/material.dart';

import '../../homeScreen/home_page.dart';

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
