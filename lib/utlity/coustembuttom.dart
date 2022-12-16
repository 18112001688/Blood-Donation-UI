import 'package:blood_donation_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoustemButton extends StatelessWidget {
  CoustemButton({required this.butttonStatus, this.onPressed});
  final String butttonStatus;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 53,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: KPrimaryColor,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          butttonStatus,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
