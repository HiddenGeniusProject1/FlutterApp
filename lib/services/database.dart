import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:inspired_finalproject/models/stories_model.dart';
import 'package:inspired_finalproject/services/auth.dart';
import 'package:uuid/uuid.dart';

class DataBase {
  final connection = FirebaseDatabase.instance.ref();

 
  Future<void> saveStory(
      {imageUrl, title }) async {
   String? userId = Authentication().currentUser?.uid;

    String storyId = Uuid().v1();
   
  

   DatabaseReference productRef = await connection.child('stories').child(storyId);
    await productRef.set(
      {
        'userUid':userId,
        'storyUid': storyId,
        'title': title,
        'imageUrl': imageUrl,
      },
    );
    
  }

Future<List<StoryModel>> getStories(
) async {
 
  DatabaseReference productRef = connection.child('stories');
  final event = await productRef.once(DatabaseEventType.value);
  final data = event.snapshot.value as Map;
  
  final List<StoryModel> stories = [];
  data.forEach((key, value) {
   
    stories.add(StoryModel.fromJSON(value));
   });
  
   return stories;
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
