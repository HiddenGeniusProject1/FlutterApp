import 'package:flutter/material.dart';
import 'package:inspired_finalproject/homepage.dart';
import 'accountPage.dart';
import 'quotegenerator.dart';

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
    'lib/images/tennis.jpeg',
    'lib/images/kings.jpeg',
    'lib/images/basketball.png',
    'lib/images/beyonce-jay-z-new-album.webp',
    'lib/images/flyer.jpeg',
    'lib/images/singer.jpeg',
    'lib/images/stone.jpeg',
    'lib/images/Jwalt.jpeg',
    'lib/images/Oprah-Winfrey-time100-2022.webp',
    'lib/images/Harriet_Tubman_1895.jpeg',
    'lib/images/Jordan.jpeg',
    'lib/images/badfc80c11fa082f1ea0b0a49a02e0e4.jpeg',
    'lib/images/Maya-Angelou-4-5-remini-enhanced.jpeg',
    'lib/images/download.jpeg',
    'lib/images/Baldwin.webp',
    'lib/images/rs-243524-GettyImages-517262270.jpeg',
    'lib/images/artworks-000573451295-0k33qy-t500x500.jpeg',
    'lib/images/authors.jpeg',
    'lib/images/figures.jpeg',
    'lib/images/wnba.jpeg',
    'lib/images/legends.jpg',
    'lib/images/Shaquille-ONeal-VINCE-BUCCIAFPGetty-Images.webp',
    'lib/images/yarashahidi.jpeg'
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
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2,)
                ),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
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
