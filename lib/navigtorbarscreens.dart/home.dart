import 'package:blood_donation_app/constant/constant.dart';
import 'package:blood_donation_app/navigtorbarscreens.dart/personalinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utlity/bloodcontainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(55),
              child: Column(
                children: [
                  Text(
                    'Hello Again',
                    style: TextStyle(fontSize: 30, color: KPrimaryColor),
                  ),
                  Text(
                    'Tell us what you need',
                    style: TextStyle(fontSize: 25, color: KPrimaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            BloodBubble(
              text: 'I Need Blood',
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => PersonalInfo())));
              }),
            ),
            SizedBox(
              height: 30,
            ),
            BloodBubble(
              text: 'Donate Blood',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => PersonalInfo())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
