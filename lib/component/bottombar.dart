import 'package:flutter/material.dart';
import 'package:login_form/screens/home.dart';
import 'package:login_form/screens/profile.dart';

import '../screens/tabbar.dart';

class BottomBarScreen extends StatefulWidget {
  BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentindex = 0;
  final screens = [
    HomeScreen(),
    tabbarDemo(),
    profile_screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(color: Colors.white, child: screens[_currentindex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (index) {
            setState(() {
              _currentindex = index;
              print("index $index");
            });
          },
          backgroundColor: Color.fromARGB(255, 76, 93, 149),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: "Account",
            )
          ]),
    );
  }
}
