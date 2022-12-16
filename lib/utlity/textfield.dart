import 'package:blood_donation_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoustemTextField extends StatelessWidget {
  CoustemTextField({
    required this.hintText,
    required this.LapelText,
    this.onchanged,
  });

  final String hintText;
  final String LapelText;
  Function(String)? onchanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field is required';
          }
        },
        onChanged: onchanged,
        decoration: InputDecoration(
          // to make have borders
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          // to color the bordes when we not doing any thing
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KPrimaryColor),
          ),
          // to foucs on the border when we click on it
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KPrimaryColor),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          labelText: LapelText,
          labelStyle: TextStyle(
            color: KPrimaryColor,
          ),
        ),
      ),
    );
  }
}
