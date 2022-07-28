import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:inspired_finalproject/services/auth.dart';
import 'package:uuid/uuid.dart';

class DataBase {
  final connection = FirebaseDatabase.instance.ref();

 
  Future<void> saveStory(
      {imageUrl, title }) async {
   User? user = Authentication().currentUser;

    String storyId = Uuid().v1();
  

   DatabaseReference productRef = await connection.child('stories').child('hill');
    await productRef.set(
      {
        'userUid': user!.uid,
        'title': title,
        'imageUrl': imageUrl,
      },
    );
    print(title + user.uid);
  }

  Future<void> saveProfilePic({imageUrl}) async {
    User? user = await Authentication().currentUser;

    print('Saving Profile');
    print(user);

    final profileRef = connection.child('users').child(user!.uid);
    profileRef.set({
      'profile_pic': imageUrl,
    });
  }

 
}
