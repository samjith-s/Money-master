// Indicator
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final bool isSquare;
  final double size;

  const Indicator({
    Key? key,
    required this.color,
    this.textColor = Colors.white,
    required this.text,
    required this.isSquare,
    this.size = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10),
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}