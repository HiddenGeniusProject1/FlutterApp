import 'dart:math';
import 'package:flutter/material.dart';
import 'accountPage.dart';
import 'blackinfo.dart';
import 'homepage.dart';
import 'quotes.dart';

// ignore_for_file: prefer_const_constructors




class Quote extends StatefulWidget {
  const Quote({Key? key, required this.title}) : super(key: key);

  final String title;


  @override
  State<Quote> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Quote> {

   void pressedFist(){
    setState((){
      Random();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA11E1E),
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
          Align(
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
                  MaterialPageRoute(builder: (context) => Quote(title: 'Quote Generator',))
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
                  MaterialPageRoute(builder: (context) => Black(title: 'Black History',))
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
