import 'package:flutter/material.dart';

class NothingTextWidget extends StatelessWidget {
  const NothingTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Text(
          'Nothing to show Here',
          style: TextStyle(
              color: Colors.grey, fontSize: 17, fontFamily: 'AnticSlab'),
        ),
      ),
    );
  }
}