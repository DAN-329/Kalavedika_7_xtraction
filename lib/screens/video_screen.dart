import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:kalavedika/constants.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoPlayer extends StatelessWidget {
  VideoPlayer({@required String this.videoID});
  final String videoID;
  YoutubePlayerController VideoData2(String videoID) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoID,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return controller;
  }

  final nameHolder = TextEditingController();

  clearTextInput() {
    nameHolder.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            YoutubePlayer(
              controller: VideoData2(videoID),
              showVideoProgressIndicator: true,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(7),
              width: 400,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        EdgeAlert.show(context,
                            backgroundColor: Colors.green,
                            icon: FontAwesomeIcons.checkCircle,
                            title: 'Thank You for your Support ',
                            gravity: EdgeAlert.TOP);
                        clearTextInput();
                      },
                      child: Text(
                        'Donate',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontFamily: 'Museo',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 130,
                    child: TextField(
                      controller: nameHolder,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      onChanged: (value) {},
                      decoration: kDecoration.copyWith(
                        hintText: 'Amount',
                        hintStyle: TextStyle(color: Colors.white70),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset('images/banner.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
