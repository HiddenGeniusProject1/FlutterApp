import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  final function;

  StoryCircle({this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Icon(
            Icons.person,
            size: 40,
          ),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white30,
            border: Border.all(
              width: 2.5,
            ),
          ),
        ),
      ),
    );
  }
}
