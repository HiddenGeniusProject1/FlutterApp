import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('lib/images/city.jpeg'), fit: BoxFit.cover),
      ),
      child: Text(
        'Reggie Jackson - "Fans don\'t boo nobodies."',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Ibarra Real Nova',
          color: Colors.red,
        ),
     ),
     padding: EdgeInsets.only(bottom: 400, top: 400,),
    );
  }
}