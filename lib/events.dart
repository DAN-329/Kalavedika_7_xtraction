import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/drawer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Upcoming Events');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController;

  List<String> images = [
    'https://uvision.hku.hk/getImage.php?fixwidth=1024&file=posters/20655_20170104_BombayJR_poster.jpg',
    'https://i.pinimg.com/originals/ad/d1/a1/add1a180d37aa89b252979cde758597e.jpg',
    'https://i.pinimg.com/originals/23/1f/e5/231fe5ece952b0bf99b83a997e8bcd71.jpg',
    'https://pbs.twimg.com/media/Dd0MZRVUQAEY9X_.jpg',
    'https://i.pinimg.com/originals/25/74/db/2574db188a8cf2003c1e12c308512041.jpg',
    'https://i.pinimg.com/originals/bb/4b/06/bb4b06d462aee48e5459eae332975543.jpg'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

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
      body: PageView.builder(
          controller: pageController,
          itemCount: images.length,
          itemBuilder: (context, position) {
            return imageSlider(position);
          }),
    );
  }

  imageSlider(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 400,
            width: Curves.easeInOut.transform(value) * 300,
            child: widget,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Image.network(images[index], fit: BoxFit.cover),
      ),
    );
  }
}
