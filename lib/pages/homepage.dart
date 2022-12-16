import 'package:blood_donation_app/constant/constant.dart';
import 'package:blood_donation_app/navigtorbarscreens.dart/home.dart';
import 'package:blood_donation_app/navigtorbarscreens.dart/profile.dart';
import 'package:blood_donation_app/navigtorbarscreens.dart/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _screeSelected = 0;

  List<Widget> screens = [
    Home(),
    Search(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: KPrimaryColor,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _screeSelected = value;
          });
        },
        currentIndex: _screeSelected,
        elevation: 0,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home_filled,
                color: KPrimaryColor,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
                color: KPrimaryColor,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person,
                color: KPrimaryColor,
              )),
        ],
      ),
      body: screens[_screeSelected],
    );
  }
}
