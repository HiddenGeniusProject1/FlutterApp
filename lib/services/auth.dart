import 'package:firebase_auth/firebase_auth.dart';
class Authentication{
  final connection = FirebaseAuth.instance;

  Future<String?> registerUserWithEmailPassword(String email, String password, String name) async{
    try{
      final UserCredential credential = await connection
      .createUserWithEmailAndPassword(email: email, password: password);
   
      await credential.user?.updateDisplayName(name);
    } on FirebaseAuthException catch (error) {
      print(error.code);
      return error.message;
    }
  }

  loginUserWithEmailPassword(String email, String password,) async{
    try{
      final UserCredential credential = await connection
      .createUserWithEmailAndPassword(email: email, password: password);

    } on FirebaseAuthException catch (error) {
      print(error.code);
      return error.message;
    }
  }

  Future signoutUser() async{
    try{
      return await connection.signOut();
    } on FirebaseAuthException catch (error) {
      return error.message;
    }
  }
}