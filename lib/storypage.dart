// ignore_for_file: unused_element

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:inspired_finalproject/screens/utils/story_bars.dart';
import 'package:inspired_finalproject/stories/story_1.dart';
import 'package:inspired_finalproject/stories/story_2.dart';
import 'package:inspired_finalproject/stories/story_3.dart';
import 'package:inspired_finalproject/storyscreen.dart';
import 'like_button_widget.dart';

class StoryPage extends StatefulWidget {
  
  @override
  State<StoryPage> createState() => _StoryPageState();
}


class _StoryPageState extends State<StoryPage> {
  int currentStoryIndex = 0;
  final List<Widget> myStories = [
    MyStory1(),
    MyStory2(),
    MyStory3(),
  ];

  List<double> percentWatched = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < myStories.length; i++) {
      percentWatched.add(0);
    }

    _startWatching();
  }

  void _startWatching() {
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        if (percentWatched[currentStoryIndex] + 0.01 < 1) {
          percentWatched[currentStoryIndex] += 0.01;
        } else {
          percentWatched[currentStoryIndex] = 1;
          timer.cancel();

          if (currentStoryIndex < myStories.length - 1) {
            currentStoryIndex++;
            _startWatching();
          } else {
            Navigator.pop(context);
          }
        }
      });
    });
  }

  void _ontapDown(TapDownDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;

    if (dx < screenWidth / 2) {
      setState(() {
        if (currentStoryIndex > 0) {
          percentWatched[currentStoryIndex - 1] = 0;
          percentWatched[currentStoryIndex] = 0;

          currentStoryIndex--;
        }
      });
    } else {
      setState(() {
        if (currentStoryIndex < myStories.length - 1) {
          percentWatched[currentStoryIndex] = 1;
          currentStoryIndex++;
        } else {
          percentWatched[currentStoryIndex] = 1;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _ontapDown(details),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            myStories[currentStoryIndex],
            MyStoryBars(
              percentWatched: percentWatched,
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: Align(
                      alignment: Alignment.topRight,
                    child: RawMaterialButton(
                      child: const Icon (
                        Icons.exit_to_app,
                        color: Colors.white,
                        size: 40.0,
                    ),
                    elevation: 0.0,
                      onPressed: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                      },
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0, bottom: 90.0, left: 15.0),
                  child: Container(
                    child: Icon(
                      Icons.person,
                      size: 48,
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white30,
                      border: Border.all(
                        width: 2.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Justin W.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
              ],
            ),
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: LikeButtonWidget(),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
