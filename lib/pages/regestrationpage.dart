import 'package:blood_donation_app/constant/constant.dart';
import 'package:blood_donation_app/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utlity/coustembuttom.dart';
import '../utlity/textfield.dart';

class Register extends StatelessWidget {
  Register({super.key});
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Register',
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
              child: CoustemButton(butttonStatus: 'Register'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account ?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => LoginPage())));
                    },
                    child: Text(
                      'Login',
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
      ),
    );
  }
}
