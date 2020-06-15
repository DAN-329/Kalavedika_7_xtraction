import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalavedika/components/drawer.dart';
import 'package:kalavedika/events.dart';
import 'package:kalavedika/components/articles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerData(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Kalavedika  ',
            style: TextStyle(
              fontSize: 30,
              color: Color(0xffe63900),
              fontFamily: 'Courgette',
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'profile');
                },
                child: Icon(
                  FontAwesomeIcons.user,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Articles',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.green),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            color: Colors.lightGreen,
            child: FlatButton(
              child: Text(
                "  Carnatic Music  ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Article(text: 'CARNATIC MUSIC HISTORY'),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.lightGreen,
            child: FlatButton(
              child: Text(
                "Hindustani Music",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Article(
                      text: 'HINDUSTANI MUSIC HISTORY',
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.lightGreen,
            child: FlatButton(
              child: Text(
                "    Indian Dance    ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Article(
                      text: 'INDIAN Dance HISTORY',
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Card(
            color: Colors.blue,
            child: FlatButton(
              child: Text(
                "    Upcoming Events     ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
