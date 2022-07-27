
import 'package:flutter/material.dart';
import 'package:inspired_finalproject/login.dart';
import 'package:inspired_finalproject/quotegenerator.dart';
import 'main.dart';
import 'blackinfo.dart';
import 'homepage.dart';

// ignore_for_file: prefer_const_constructors

void main() => runApp(const Account());

class Account extends StatelessWidget {
  const Account({key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Account';
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
        body: const AccountForm(),
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
               onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quote())
                );
               },
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
            color: Color(0xFFA11E1E)
          ),
      ),
    );
  }
}

class AccountForm extends StatelessWidget {
  const AccountForm({key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
            children: <Widget> [
              Container(
                margin: EdgeInsets.all(13),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xFFB23939),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 2,
                  ),
                ),
                  child: Icon (
                    Icons.exit_to_app_rounded,
                    size: 65.0,
                ),
                constraints: BoxConstraints.tightFor(
                  width: 86.0,
                  height: 86.0,
                ),
              ),
            Padding(
              padding: EdgeInsets.all(45.0),
              child: FlatButton(
                height: 58.0,
                minWidth: 200.0,
              color: Color(0xFFA11E1E),
              child: Text(
                'Sign Out',
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
            ],
          ),
        Row(
            children: <Widget> [
              Container(
                margin: EdgeInsets.all(13),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xFFB23939),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 2,
                  ),
                ),
                  child: Icon (
                    Icons.switch_account,
                    size: 65.0,
                ),
                constraints: BoxConstraints.tightFor(
                  width: 86.0,
                  height: 86.0,
                ),
              ),
            Padding(
              padding: EdgeInsets.all(45.0),
              child: FlatButton(
                height: 58.0,
                minWidth: 140.0,
              color: Color(0xFFA11E1E),
              child: Text(
                'Switch Account',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
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
    );
  }
}