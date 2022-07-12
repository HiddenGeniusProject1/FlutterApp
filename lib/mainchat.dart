
import 'package:flutter/material.dart';
import 'screens/chatscreen.dart';

void main(){
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
        theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ChatPage(),
    );
  }
}