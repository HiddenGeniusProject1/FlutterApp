import 'package:flutter/material.dart';
import 'package:inspired_finalproject/screens/utils/story_circles.dart';

class  HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        children: <Widget> [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return StoryCircle();
              }),
          )
        ],
      ), 
    );
  }
}