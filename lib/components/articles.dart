import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Article extends StatelessWidget {
  Article({this.text});
  final String text;
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
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Center(
              child: Text(text,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black87,
                    letterSpacing: 2.0,
                  )),
            ),
            SizedBox(height: 20.0),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            Text(
                'Quisque nec ornare lorem. Maecenas maximus auctor tortor, et eleifend lorem ultricies nec.'),
            Text(
                'Sed vitae urna sit amet mi lobortis efficitur. Aliquam ac lobortis tellus, sed placerat ipsum.'),
            Text(
                'Vivamus viverra eleifend porta. Mauris convallis metus et arcu hendrerit lacinia.'),
            Text(
                'Duis purus sapien, sollicitudin eu rhoncus vel, placerat at turpis. Fusce at laoreet neque.'),
            Text(
                'Donec faucibus, leo et maximus elementum, nulla diam condimentum leo, eget consectetur massa nunc non mauris.'),
            Text(
                'Vestibulum vel efficitur urna, sit amet fermentum leo. Praesent tellus leo, congue eget tincidunt ut.'),
            Text(
                'Maecenas vulputate lacus nisl, vitae iaculis eros faucibus vitae. Nulla maximus congue sem,'),
            Text(
                'ac blandit nulla efficitur cursus. Mauris nulla urna, sodales eget fermentum in,'),
            Text(
                'Donec sit amet ligula ex. Proin aliquet justo sed arcu bibendum consequat.'),
            Text(
                'Nulla facilisi. Duis sollicitudin enim eros, at consequat ex fermentum id.'),
            Text(
                'Morbi eu risus porta, varius purus eu, accumsan sem. Phasellus placerat elementum mi'),
            Text('sit amet semper arcu suscipit sit amet. Nulla facilisi'),
          ],
        ),
      ),
    );
  }
}
