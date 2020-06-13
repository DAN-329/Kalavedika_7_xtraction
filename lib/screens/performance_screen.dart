import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalavedika/components/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'payment-video_screen.dart';

class Performance extends StatefulWidget {
  @override
  _PerformanceState createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
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
      //backgroundColor: Colors.grey[300],
      //backgroundColor: Colors.blue[100],
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              //color: Colors.blue,
              color: Colors.grey[200],
              padding: EdgeInsets.all(9.0),
              child: Center(
                child: Text(
                  'Performances',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Museo',
                    letterSpacing: 2,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    VideoCard(
                      videoID: 's1TXOu2VR_4',
                      text: 'Carnatic Violin by Prof.T N Krishnan',
                    ),
                    SizedBox(width: 5),
                    VideoCard(
                      videoID: 'e58PohBowOY',
                      text: 'Ranjani Gayatri Chicago',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    VideoCard(
                      videoID: 'UTPyKo156sA',
                      text: 'Music Concert by Pt. Venkatesh Kumar',
                    ),
                    SizedBox(width: 5),
                    VideoCard(
                      videoID: '3qnnE9-2t_Q',
                      text: 'Visaka Hari,Meenakshi Thirukkalyanam',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

YoutubePlayerController VideoData(String videoID) {
  YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  return controller;
}

class VideoCard extends StatelessWidget {
  VideoCard({this.videoID, this.text});
  final String videoID;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        width: 190,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PayVideo(
                  videoID: videoID,
                ),
              ),
            );
          },
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: VideoData(videoID),
                showVideoProgressIndicator: true,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PayVideo(
                              videoID: videoID,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(3),
                        color: Colors.redAccent,
                        child: Center(
                          child: Text(
                            'View',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
