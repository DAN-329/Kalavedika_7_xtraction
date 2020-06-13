import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/home.dart';
import 'screens/profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome',
      //initialRoute: 'homescreen',
      routes: {
        'welcome': (context) => Welcome(),
        'login': (context) => LoginScreen(),
        'register': (context) => RegistrationScreen(),
        'home': (context) => Home(),
        'profile': (context) => Profile(),
        'homescreen': (context) => HomeScreen(), // Has to be changes
      },
    );
  }
}
