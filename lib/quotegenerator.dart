import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'accountPage.dart';
import 'blackinfo.dart';
import 'mainchat.dart';
import 'homepage.dart';
import 'quotes.dart';

// ignore_for_file: prefer_const_constructors

void main() {
  runApp(const Quote());
}

class Quote extends StatelessWidget {
  const Quote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote Generator',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFA11E1E),
      ),
      home: const MyHomePage(
        title: 'Quote Generator',
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

   void pressedFist(){
    setState((){
      Random();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD4AF37),
        title: Text(
          widget.title, 
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Finlandica',
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
       ),
      ),
      
      body: Column(
        children:<Widget> [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(23.0),
              child: Text(
                'Tap On the Fist to Generate a Quote', 
                textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 27.5,
                fontFamily: 'Playfair Display',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Expanded(
                child: Builder(
                builder: (context) => FlatButton(
                  onPressed: (){
                    var random = Random();
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          quotes[random.nextInt(quotes.length)],
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Ibarra Real Nova',
                          ),
                        ),
                      ),
                    );
                  },
                child: Image.asset(
                  'lib/images/Fist.svg.png', 
                  height: 300.0,
                ),
                )
              ),
            )
              ),
          ),
          Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
              '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        ],
      ),
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
            color: Color(0xFFD4AF37)
          ),
    );
  }
}
