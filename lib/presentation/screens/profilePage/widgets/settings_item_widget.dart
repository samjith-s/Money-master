
import 'package:flutter/material.dart';

import '../../../../config/constant_colors.dart';

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  final String label;
  final bool showSwitch;
  const SettingsItem({
    Key? key,
    required this.label,
    this.showSwitch = false,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        child: Row(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: appBlue,
                  size: 26,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  label,
                  style: const TextStyle(
                      fontFamily: 'AnticSlab', fontSize: 19, color: appWhite),
                ),
              ],
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
      onTap: onTap,
    );
  }
}


