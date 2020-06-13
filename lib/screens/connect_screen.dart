import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalavedika/components/drawer.dart';

class KalaConnect extends StatelessWidget {
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
            width: double.infinity,
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Connect',
                style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 3.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeacherPage(),
                  ),
                );
              },
              child: Card(
                elevation: 10.0,
                color: Colors.blue[300],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 60.0),
                  child: Text(
                    ' TEACHERS  ',
                    style: TextStyle(
                      fontSize: 21.0,
                      letterSpacing: 3.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArtistPage(),
                  ),
                );
              },
              child: Card(
                elevation: 10.0,
                color: Colors.blue[300],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 60.0),
                  child: Text(
                    '    ARTISTS  ',
                    style: TextStyle(
                      fontSize: 21.0,
                      letterSpacing: 3.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrganiserPage(),
                  ),
                );
              },
              child: Card(
                elevation: 10.0,
                color: Colors.blue[300],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 60.0),
                  child: Text(
                    'ORGANISERS',
                    style: TextStyle(
                      fontSize: 21.0,
                      letterSpacing: 3.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}

class TeacherPage extends StatefulWidget {
  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  List<Profile_brief> teachers = [
    Profile_brief(
        name: "Teacher 1",
        image_adress: "images/teacher_1.jpg",
        emailID: "teacher_one@gmail.com"),
    Profile_brief(
        name: "Teacher 2",
        image_adress: "images/teacher_2.jpg",
        emailID: "teacher_two@gmail.com"),
    Profile_brief(
        name: "Teacher 3",
        image_adress: "images/teacher_3.jpg",
        emailID: "teacher_three@gmail.com")
  ];
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
          Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.grey[400],
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Teachers',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 3.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Column(
                children: teachers
                    .map((teachers) => MemberProfileWidget(member: teachers))
                    .toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ArtistPage extends StatefulWidget {
  @override
  _ArtistPageState createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
  List<Profile_brief> artists = [
    Profile_brief(
        name: "Artist 1",
        image_adress: "images/artist_1.jpg",
        emailID: "artist_one@gmail.com"),
    Profile_brief(
        name: "Artist 2",
        image_adress: "images/artist_2.jpg",
        emailID: "artist_two@gmail.com"),
    Profile_brief(
        name: "Artist 3",
        image_adress: "images/artist_3.jpg",
        emailID: "artist_three@gmail.com")
  ];
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
          Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.grey[400],
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Artists',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 3.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Column(
                children: artists
                    .map((artists) => MemberProfileWidget(member: artists))
                    .toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class OrganiserPage extends StatefulWidget {
  @override
  _OrganiserPageState createState() => _OrganiserPageState();
}

class _OrganiserPageState extends State<OrganiserPage> {
  List<Profile_brief> organisers = [
    Profile_brief(
        name: "Organiser 1",
        image_adress: "images/logo_1.jpg",
        emailID: "organiser_one@gmail.com"),
    Profile_brief(
        name: "Organiser 2",
        image_adress: "images/logo_2.jpg",
        emailID: "organiser_two@gmail.com"),
    Profile_brief(
        name: "Organiser 3",
        image_adress: "images/logo_2.jpg",
        emailID: "organiser_three@gmail.com")
  ];
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
          Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.grey[400],
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Organisers',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 3.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Column(
                children: organisers
                    .map(
                        (organisers) => MemberProfileWidget(member: organisers))
                    .toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// Custom widget that contains brief info about the member, name, dp and emailID

class MemberProfileWidget extends StatelessWidget {
  final Profile_brief member;
  MemberProfileWidget({this.member});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(member.image_adress),
                  radius: 30.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      member.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.mail),
                        Text(
                          member.emailID,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(
              height: 20.0,
              color: Colors.grey[800],
            ),
          ],
        ),
      ),
      color: Colors.grey[300],
    );
  }
}

class Profile_brief {
  String name;
  String image_adress;
  String emailID;

  Profile_brief({this.name, this.image_adress, this.emailID});
}
