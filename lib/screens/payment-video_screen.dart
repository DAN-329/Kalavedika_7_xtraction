import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalavedika/components/drawer.dart';
import 'package:kalavedika/constants.dart';
import 'package:edge_alert/edge_alert.dart';
import 'video_screen.dart';

IconData p1 = FontAwesomeIcons.circle, p2 = FontAwesomeIcons.circle;

class PayVideo extends StatefulWidget {
  PayVideo({@required String this.videoID});
  final String videoID;
  @override
  _PayVideoState createState() => _PayVideoState();
}

class _PayVideoState extends State<PayVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerData(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffe63900)),
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
                onTap: () {},
                child: Icon(
                  FontAwesomeIcons.user,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Payments',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Museo',
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          p1 = FontAwesomeIcons.dotCircle;
                          p2 = FontAwesomeIcons.circle;
                        });
                      },
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(
                                p1,
                                color: Colors.black,
                                size: 30,
                              ),
                              Text(
                                '           Rs 100           ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Museo',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          p1 = FontAwesomeIcons.circle;
                          p2 = FontAwesomeIcons.dotCircle;
                        });
                      },
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(
                                p2,
                                color: Colors.black,
                                size: 30,
                              ),
                              Text(
                                'Rs 100 +',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Museo',
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 130,
                                child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.center,
                                  onChanged: (value) {},
                                  decoration: kDecoration.copyWith(
                                    hintText: 'Amount',
                                  ),
                                ),
                              ),
                              //TextField()
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    FlatButton(
                      onPressed: () {
                        EdgeAlert.show(context,
                            backgroundColor: Colors.green,
                            icon: FontAwesomeIcons.checkCircle,
                            title: 'Payment Successful',
                            gravity: EdgeAlert.TOP);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                VideoPlayer(videoID: widget.videoID),
                          ),
                        );
                      },
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        width: 350,
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Pay',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                      onPressed: () {
                        EdgeAlert.show(context,
                            backgroundColor: Colors.black,
                            icon: FontAwesomeIcons.star,
                            title: '   Coming Soon!',
                            gravity: EdgeAlert.TOP);
                      },
                      child: Container(
                        color: Colors.black,
                        height: 50,
                        width: 350,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Center(
                              child: Text(
                                'Upgrade to Premium',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Icon(
                              FontAwesomeIcons.solidStar,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
