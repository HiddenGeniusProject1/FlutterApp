import 'package:flutter/material.dart';
import 'accountPage.dart';
import 'blackinfo.dart';
import 'mainchat.dart';
import 'quotegenerator.dart';

// ignore_for_file: prefer_const_constructors


void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be Inspired',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFA11E1E),
      ),
      home: const MyHomePage(
        title: 'Be Inspired',
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
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:<Widget> [
            Column(
              children: <Widget> [
                Container(
                  child: Align(
                    alignment: Alignment.topRight,
                  child: RawMaterialButton(
                    child: const Icon (
                      Icons.messenger_outline_rounded,
                      size: 46.0,
                  ),
                  elevation: 0.0,
                    onPressed: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatApp())
                  );
                    },
                  constraints: BoxConstraints.tightFor(
                    width: 60.0,
                    height: 60.0,
                  ),
                  shape: CircleBorder(),
                  fillColor: Color(0xFFC35454),
                  ),
                ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
                child: Image.asset(
                  'lib/images/malcolmX.png', 
                  height: 390.0,
                ),
              ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
              color: Color(0xFFC35454),
              ),
              width: 385.0,
              height: 110,
              child: Text(
                '“A man who stands for nothing will fall for anything.” - Malcolm X', 
                textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26.5,
                fontFamily: 'Playfair Display',
                ),
              ),
            ),
          ],
        ),
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
