import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inspired_finalproject/services/database.dart';

import 'accountPage.dart';
import 'blackinfo.dart';
import 'homepage.dart';
import 'quotegenerator.dart';



class CreateStory extends StatefulWidget {
  @override
  State<CreateStory> createState() => _CreateStoryState();
}

class _CreateStoryState extends State<CreateStory> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new GalleryAccess(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GalleryAccess extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new GalleryAccessState();
  }
}

class GalleryAccessState extends State<GalleryAccess> {
  // late File galleryFile;
  // final ImagePicker _picker = ImagePicker();

  var _profileImage;

  var text;

  final picker = ImagePicker();

  Future getImageGallery() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _profileImage = File(pickedImage.path);
      } else {
        print('No Image Selected');
      }
    });
  }

  late File sampleImage;
  // String _myValue;
  String? url;
  final formKey = new GlobalKey<FormState>();

  Future getImage() async {
    var tempImage = await picker.pickImage(
      source: ImageSource.gallery,
    );

    setState(() {
      sampleImage = tempImage as File;
    });
  }

  
  Future<void> uploadStatusImage() async {
    if (true) {
      final postImageRef = FirebaseStorage.instance.ref().child("Post Images");

      var timeKey = new DateTime.now();

      final imageRef = postImageRef.child(timeKey.toString() + ".jpg");

      await imageRef.putFile(_profileImage);

      var imageUrl = await imageRef.getDownloadURL();
      url = imageUrl.toString();

      print("ImageUrl = " + url!);

      // goToHomePage();

      // saveToDatabase(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    //display image selected from gallery

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD4AF37),
        title: Text(
          'Add Story',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Finlandica',
            fontWeight: FontWeight.bold,
            fontSize: 29.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: _profileImage == null
                  ? Center(
                      child: Text("Image not loaded"),
                    )
                  : Image.file(
                      _profileImage,
                    ),
            ),
            ElevatedButton(
              child: Text('Select Image from Gallery'),
              onPressed: () async {
                await getImageGallery();
              },
            ),
            SizedBox(
              width: 200.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 150,
              ),
              child: ElevatedButton(
                child: Text('UPLOAD STORY'),
                onPressed: () async {
                  await uploadStatusImage();
                  await DataBase()
                      .saveStory(imageUrl: url, title: text);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Type your quote:',
                ),
                onChanged: ((value) {
                  setState(() {
                    text = value;
                  });
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                tooltip: 'Home',
                icon: const Icon(
                  Icons.home,
                  size: 40.0,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              IconButton(
                tooltip: 'Quote Generator',
                icon: const Icon(
                  Icons.stay_primary_portrait,
                  size: 40.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Quote(title: 'Quote Generator',)));
                },
              ),
              IconButton(
                tooltip: 'Account',
                icon: const Icon(
                  Icons.account_circle,
                  size: 40.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
                },
              ),
              IconButton(
                tooltip: 'Black Figures',
                icon: const Icon(
                  Icons.people,
                  size: 40.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Black(title: 'Black History',)));
                },
              ),
              IconButton(
              tooltip: 'Add Story',
               icon: const Icon(Icons.add, size: 40.0,),
               onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateStory())
                );
               },
            ),
            ],
          ),
          color: Color(0xFFD4AF37)),
    );
  }
}
