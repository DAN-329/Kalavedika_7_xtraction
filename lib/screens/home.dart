import 'package:flutter/material.dart';
import 'package:kalavedika/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'performance_screen.dart';
import 'home_screen.dart';
import 'workshop_screen.dart';
import 'connect_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  List screens = [HomeScreen(), Performance(), KalaConnect(), WorkshopPage()];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 30,
        showSelectedLabels: true,
        backgroundColor: Colors.white,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: kbottomNavigatorTxt,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.ticketAlt,
              color: Colors.black,
            ),
            title: Text(
              'Performances',
              style: kbottomNavigatorTxt,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.comment,
              color: Colors.black,
            ),
            title: Text(
              'Connect',
              style: kbottomNavigatorTxt,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.chalkboardTeacher,
              color: Colors.black,
            ),
            title: Text(
              'Workshops',
              style: kbottomNavigatorTxt,
            ),
          ),
        ],
      ),
    );
  }
}
