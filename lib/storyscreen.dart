import 'package:flutter/material.dart';
import 'package:inspired_finalproject/screens/utils/story_circles.dart';
import 'package:inspired_finalproject/storypage.dart';
import 'accountPage.dart';
import 'blackinfo.dart';
import 'homepage.dart';
import 'quotegenerator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _openStory() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StoryPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFD4AF37),
        title: Text(
          'Stories',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Finlandica',
            fontWeight: FontWeight.bold,
            fontSize: 29.0,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StoryCircle(
                    function: _openStory,
                  );
                }),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'lib/images/logo.png',
                width: 800.0,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            color: Color(0xFFF5F5F5),
            ),
            width: 350.0,
            height: 100,
            child: Text(
              'Check out stories from your friends by clicking the profiles above',
              style: TextStyle(
                fontSize: 26.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Finlandica',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            IconButton(
              tooltip: 'Home',
               icon: const Icon(Icons.home, size: 40.0,),
               onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home())
                );
               },
            ),
            IconButton(
              tooltip: 'Quote Generator',
               icon: const Icon(Icons.stay_primary_portrait, size: 40.0,),
               onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quote())
                );
               },
            ),
            IconButton(
              tooltip: 'Account',
               icon: const Icon(Icons.account_circle, size: 40.0,),
               onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Account())
                );
               },
            ),
            IconButton(
              tooltip: 'Black Figures',
               icon: const Icon(Icons.people, size: 40.0,),
               onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallery())
                );
               },
            ),
          ],
        ),
            color: Color(0xFFD4AF37)
          ),
    );
  }
}
