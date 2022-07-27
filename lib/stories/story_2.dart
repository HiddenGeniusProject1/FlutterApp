import 'package:flutter/material.dart';

class MyStory2 extends StatelessWidget {
  const MyStory2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('lib/images/protest.jpeg'), fit: BoxFit.cover),
      ),
      child: Text(
        'Huey Newton - "Black Power is giving power to people who have not had power to determine their destiny."',
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