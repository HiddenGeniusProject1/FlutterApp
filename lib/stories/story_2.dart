import 'package:flutter/material.dart';
import 'package:inspired_finalproject/models/stories_model.dart';

class MyStory2 extends StatelessWidget {
  StoryModel story;
   MyStory2({required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration:  BoxDecoration(
        image: DecorationImage(image: NetworkImage(story.url), fit: BoxFit.cover),
      ),
      child: Text(
      story.text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Ibarra Real Nova',
          color: Colors.white,
        ),
     ),
     padding: EdgeInsets.only(bottom: 400, top: 400,),
    );
  }
}