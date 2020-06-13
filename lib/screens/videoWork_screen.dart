import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:kalavedika/constants.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoPlayerWork extends StatelessWidget {
  VideoPlayerWork({@required String this.videoID});
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
      backgroundColor: Colors.grey[100],
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
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset('images/work.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
