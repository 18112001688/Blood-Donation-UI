import 'package:blood_donation_app/constant/constant.dart';
import 'package:blood_donation_app/utlity/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utlity/coustembuttom.dart';

class PersonalInfo extends StatefulWidget {
  PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  String? fullName;

  String? phoneNumber;

  String? age;

  String? hospitalName;

  String? hospitalAddress;

  final bloodType = [
    'A+',
    'B+',
    'AB+',
    'O+',
    'A-',
    'B-',
    'AB-',
    'O-',
  ];

  String? bloodValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    'Personal Information',
                    style: TextStyle(
                      fontSize: 20,
                      color: KPrimaryColor,
                    ),
                  ),
                ),
                CoustemTextField(
                  hintText: 'Enter your full name ',
                  LapelText: 'Full Name',
                  onchanged: (data) {
                    fullName = data;
                  },
                ),
                CoustemTextField(
                  hintText: 'Enter your Phone Number ',
                  LapelText: 'Phone',
                  onchanged: (data) {
                    phoneNumber = data;
                  },
                ),
                CoustemTextField(
                  hintText: 'Enter your Age ',
                  LapelText: 'Age',
                  onchanged: (data) {
                    age = data;
                  },
                ),
                CoustemTextField(
                  hintText: 'Enter The Hospital name',
                  LapelText: 'Hospital name',
                  onchanged: (data) {
                    hospitalName = data;
                  },
                ),
                CoustemTextField(
                  hintText: 'Enter The Hospital Address',
                  LapelText: 'Hospital Adress',
                  onchanged: (data) {
                    hospitalAddress = data;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Blood Type',
                    style: TextStyle(
                      color: KPrimaryColor,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: KPrimaryColor, width: 4)),
                  padding: EdgeInsets.only(left: 10),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: bloodValue,
                      items: bloodType.map(buildMenuItem).toList(),
                      onChanged: (value) {
                        setState(() {
                          bloodValue = value;
                        });
                      },
                      isExpanded: true,
                      iconSize: 36,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: KPrimaryColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CoustemButton(
                      butttonStatus: 'Submit',
                      onPressed: () {
                        setState(
                          () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                              'We will send The deatils to your email',
                            )));
                          },
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: KPrimaryColor,
          ),
        ),
      );
}
