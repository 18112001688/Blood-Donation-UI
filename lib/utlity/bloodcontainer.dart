import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/constant.dart';

class BloodBubble extends StatelessWidget {
  BloodBubble({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 80,
      decoration: BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
