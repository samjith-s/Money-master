import 'package:flutter/material.dart';
import '../../../../config/constant_colors.dart';

SizedBox detailsPageButton(
    {required IconData icon, required void Function()? onpressed}) {
  return SizedBox(
    width: 100,
    child: OutlinedButton(
      onPressed: onpressed,
      child: Icon(
        icon,
        color: icon == Icons.edit ? appBlue : expenseRed,
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 2, color: appWhite),
      ),
    ),
  );
}
