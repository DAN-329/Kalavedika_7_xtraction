import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/girl.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ananya Uppal',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  'Vocal Musician',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  //color: Color(0xffe63900),
                  color: Colors.black,
                  thickness: 1.5,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                DrawerCard('My Events', () {}),
                DrawerCard('Payments', () {}),
                DrawerCard('Settings', () {}),
                DrawerCard('Contact Us', () {}),
                DrawerCard('About Us', () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DrawerCard extends StatefulWidget {
  DrawerCard(this.text, this.function);
  final String text;
  final Function function;

  @override
  _DrawerCardState createState() => _DrawerCardState();
}

class _DrawerCardState extends State<DrawerCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: widget.function(),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 1.5,
        ),
      ],
    );
  }
}
