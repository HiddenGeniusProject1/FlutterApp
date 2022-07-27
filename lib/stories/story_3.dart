import 'package:flutter/material.dart';

class MyStory3 extends StatelessWidget {
  const MyStory3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('lib/images/kobe.png'), fit: BoxFit.cover),
      ),
      child: Text(
        'Kobe Bryant - "We psych ourselves up too much. Like if you try to talk yourself into, ‘Oh, this is a big moment, this is a big shot,’ you’re putting a lot of pressure on yourself. You shot that shot hundreds and thousands of times. Just shoot another one.”',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Ibarra Real Nova',
          color: Color(0xFFD4AF37),
        ),
     ),
     padding: EdgeInsets.only(bottom: 400, top: 400,),
    );
  }
}