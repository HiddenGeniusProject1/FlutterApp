
import 'package:firebase_database/firebase_database.dart';
import 'package:inspired_finalproject/services/auth.dart';

class DataBase{
 
    final connection = FirebaseDatabase.instance.ref();
  DataBase({uid});

  Future <void> saveProfilePic ({imageUrl}) async{
    String? user = await Authentication().currentUser!.uid;

    print('Saving Profile');
    print(user);

    final profileRef = connection.child('users').child(user);
    profileRef.set(
      {
        'profile_pic': imageUrl,
      }
    );
  }
}