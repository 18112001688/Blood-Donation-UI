import 'package:blood_donation_app/pages/homepage.dart';
import 'package:blood_donation_app/pages/regestrationpage.dart';
import 'package:blood_donation_app/utlity/coustembuttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/constant.dart';
import '../utlity/textfield.dart';

class LoginPage extends StatelessWidget {
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Text(
                'Blood Donation',
                style: TextStyle(
                  color: KPrimaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65),
            child: Text(
              'You can save a life by donating blood',
              style: TextStyle(
                color: KPrimaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 29,
                    color: KPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          CoustemTextField(
            hintText: 'Enter Your Email',
            LapelText: 'Email',
            onchanged: ((data) {
              email = data;
            }),
          ),
          CoustemTextField(
            hintText: 'Enter Your Password',
            LapelText: 'Password',
            onchanged: (data) {
              password = data;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CoustemButton(
              butttonStatus: 'Login',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Homepage())));
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Register())));
                  },
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      fontSize: 18,
                      color: KPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
