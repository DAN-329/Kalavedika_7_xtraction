import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalavedika/components/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'payment-work_screen.dart';

class WorkshopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.grey[200],
              child: Center(
                child: Text(
                  'Workshops',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Architects',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            VideoCardWork(
              videoID: 'ADns5M4gXKo',
              text: 'FLAVORS OF \nHINDUSTANI AND \nCARNATIC MUSIC',
            ),
            VideoCardWork(
              videoID: 'g8w4Yx767mM',
              text: 'Ranjani Gayatri \nLecdem on \nGraha Bhedam"',
            ),
            VideoCardWork(
              videoID: 'nzJ89MvEE1w',
              text: 'Nedunuri garu with \nDr.Pappu Venugopal',
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

YoutubePlayerController VideoDataWork(String videoID) {
  YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  return controller;
}

class VideoCardWork extends StatelessWidget {
  VideoCardWork({this.videoID, this.text});
  final String videoID;
  final String text;
  List<Widget> Stuff = [];
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        height: 150,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PayVideoWork(
                  videoID: videoID,
                ),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 120,
                child: YoutubePlayer(
                  controller: VideoDataWork(videoID),
                  showVideoProgressIndicator: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PayVideoWork(
                              videoID: videoID,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.all(3),
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Learn',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
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
