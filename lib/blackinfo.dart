import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'accountPage.dart';

// ignore_for_file: prefer_const_constructors


void main() {
  runApp(Gallery());
}

class Gallery extends StatelessWidget {
   Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Heroes',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Black(
        title: 'Black Heroes',
        ),
    );
  }
}

class Black extends StatefulWidget {
  const Black({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Black> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Black> {

  List<String>images = [
    'lib/images/malcolmX.png',
    'lib/images/kobe.png',
    'lib/images/obama-gq-1215-05.webp',
    'lib/images/Denzel_Sidney_GettyImages-613488462_1280.webp',
    'lib/images/gettyimages-152247360.jpeg',
    'lib/images/tennis.jpeg'

  ];

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
      
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context, int index){
              return Image.asset(
                images[index],
              );
            },
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
                  MaterialPageRoute(builder: (context) => Gallery())
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
               onPressed: () {},
            ),
          ],
        ),
            color: Color(0xFFD4AF37)
          ),
    );
  }
}
