import 'package:flutter/material.dart';
import 'package:kalavedika/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kalavedika/components/roundedButton2.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var alertStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  animationDuration: Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
  ),
);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool ShowSpinner = false;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ModalProgressHUD(
        inAsyncCall: ShowSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.jpeg'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration:
                    kDecoration.copyWith(hintText: 'Enter your password.'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton2(
                text: 'Log In',
                color: Color(0xffe63900),
                onpressed: () async {
                  setState(() {
                    ShowSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) Navigator.pushNamed(context, 'home');
                    setState(() {
                      ShowSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                    Alert(
                      context: context,
                      style: alertStyle,
                      type: AlertType.info,
                      title: "LOGIN INVALID",
                      desc: "If you are a new user please Register",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "HOME",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          //onPressed: () => Navigator.pop(context),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'welcome'),
                          //color: Color.fromRGBO(0, 179, 134, 1.0),
                          color: Color(0xffe63900),
                          radius: BorderRadius.circular(0.0),
                        ),
                      ],
                    ).show();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
