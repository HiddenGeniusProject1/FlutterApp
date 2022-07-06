import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inspired_finalproject/login.dart';
import 'signupPage.dart';
import 'login.dart';
// ignore_for_file: prefer_const_constructors


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inspired',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF274E2B),
      ),
      home: const MyHomePage(
        title: 'Welcome to Inspired',
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA11E1E),
        title: Text(
          widget.title, 
          style: TextStyle(
            fontFamily: 'Finlandica',
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
       ),
      ),
      body: Column(
        children:<Widget> [
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
                child: Image.asset(
                  'lib/images/africaCont.png', 
                  width: 230.0,
                ),
              ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            color: Color(0xFFA11E1E),
            ),
            width: 350.0,
            height: 100,
            child: Text(
              'Welcome to Inspired, the app that celebrates Black culture between users. Please sign in or create an account below.', 
              textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
            ),
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                size: 35.0,
              ),
            ],
          ),
          Column(
            children: <Widget> [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                height: 58.0,
                minWidth: 250.0,
              color: Color(0xFFD4AF37),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sign())
                );
              },
            ),
          ),
        ],
      ),
          Column(
            children: <Widget> [
            Padding(
              padding: EdgeInsets.all(43.0),
              child: FlatButton(
                height: 58.0,
                minWidth: 250.0,
              color: Color(0xFFD4AF37),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Log())
                );
              },
              ),
          ),
        ],
      ),    
    ], 
    ),
    );
  }
}
