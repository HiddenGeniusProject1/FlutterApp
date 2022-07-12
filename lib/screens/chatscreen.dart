
import 'package:flutter/material.dart';
import 'package:inspired_finalproject/homepage.dart';
import 'package:inspired_finalproject/blackinfo.dart';
import 'package:inspired_finalproject/accountPage.dart';
import 'package:inspired_finalproject/screens/chatPage.dart';

class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageChat(),
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
               onPressed: () {},
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