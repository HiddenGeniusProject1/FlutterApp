
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';
import 'forgot.dart';
import 'homepage.dart';

// ignore_for_file: prefer_const_constructors

void main() => runApp(const Log());

class Log extends StatelessWidget {
  const Log({key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Login';
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA11E1E),
          title: const Text(
            appTitle,
            style: TextStyle(
              fontFamily: 'Finlandica',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
        body: const LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Username:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16,),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Username',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Password:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16,),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Password',
            ),
          ),
        ),
        Column(
            children: <Widget> [
            Center(
              child: Padding(
                padding: EdgeInsets.all(35.0),
                child: FlatButton(
                  height: 58.0,
                  minWidth: 250.0,
                color: Color(0xFFA11E1E),
                child: Text(
                  'Go Back',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp())
                    );
                },
              ),
          ),
            ),
        ],
      ),
      Column(
            children: <Widget> [
            Center(
              child: Padding(
                padding: EdgeInsets.all(45.0),
                child: FlatButton(
                  height: 58.0,
                  minWidth: 250.0,
                color: Color(0xFFA11E1E),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgot())
                  );
                },
              ),
            ),
          ),
        ],
      ),
      Column(
            children: <Widget> [
            Center(
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: FlatButton(
                  height: 58.0,
                  minWidth: 250.0,
                color: Color(0xFFA11E1E),
                child: Text(
                  'Enter',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home())
                    );
                },
              ),
          ),
            ),
        ],
      ),
      ]
    );
  }
}