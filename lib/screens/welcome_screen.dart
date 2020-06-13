import 'package:flutter/material.dart';
import 'package:kalavedika/components/roundedButton.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.jpeg'),
                    height: 100.0,
                    //height: animation.value * 100,
                  ),
                ),
                Text(
                  'Kalavedika',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffe63900),
                    fontFamily: 'Courgette',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              text: 'Log In',
              txtcolor: Color(0xffe63900),
              //color: Colors.lightBlueAccent,
              color: Colors.white,
              ID: 'login',
            ),
            RoundedButton(
              text: 'Register',
              //color: Colors.blueAccent,
              color: Color(0xffe63900),
              txtcolor: Colors.white,
              ID: 'register',
            ),
          ],
        ),
      ),
    );
  }
}
