import 'package:blood_donation_app/constant/constant.dart';
import 'package:blood_donation_app/utlity/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
                color: KPrimaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(118.0),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: KPrimaryColor,
                  )),
              child: Icon(
                Icons.person,
                size: 100,
                color: KPrimaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 25,
                      color: KPrimaryColor,
                    ),
                  ),
                  Text(
                    'Points',
                    style: TextStyle(
                      fontSize: 25,
                      color: KPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 35,
              ),
              Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 25,
                      color: KPrimaryColor,
                    ),
                  ),
                  Text(
                    'Shares',
                    style: TextStyle(
                      fontSize: 25,
                      color: KPrimaryColor,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
