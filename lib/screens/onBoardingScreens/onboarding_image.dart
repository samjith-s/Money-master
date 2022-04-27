import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardinImage extends StatelessWidget {
  final String path;
  const OnboardinImage({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(path),
      width: 80.w,
      height:55.w,
      fit: BoxFit.fill,
    );
  }
}
