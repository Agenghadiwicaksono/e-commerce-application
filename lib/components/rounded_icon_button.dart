import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    super.key,
    required this.icon,
    required this.press,
    this.showShadow = false,
  });

  final IconData icon;
  final GestureTapCancelCallback? press;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPropScreenWidth(40),
      width: getPropScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: const Offset(0, 6),
              blurRadius: 10,
              color: const Color(0xFFB0B0B0).withOpacity(0.2),
            ),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: press,
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
