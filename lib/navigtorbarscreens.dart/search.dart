import 'package:blood_donation_app/constant/constant.dart';
import 'package:blood_donation_app/utlity/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Search for hospitals',
                  labelStyle: TextStyle(color: KPrimaryColor),
                  prefixIcon: Icon(
                    Icons.search,
                    color: KPrimaryColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: KPrimaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: KPrimaryColor),
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
