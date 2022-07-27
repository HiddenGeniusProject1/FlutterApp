import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:inspired_finalproject/login.dart';
import 'package:inspired_finalproject/models/chatUsers.dart';
import 'package:inspired_finalproject/signupPage.dart';
class Authentication{
  FirebaseAuth connection = FirebaseAuth.instance;

   Stream<User?> get authStateChanges => connection.authStateChanges();
  //create MyAppUser from a Firebase User
  // ignore: missing_return
  MyAppUser? _userFromFirebaseUser(User? user) {
    return user != null ? MyAppUser(uid: user.uid, email: user.email, name: user.displayName,) : null;
  }

  User? get currentUser => connection.currentUser!;

  Future<String?>createUser(String name, String email, String password) async{
    try{
      final UserCredential credential = await connection
      .createUserWithEmailAndPassword(email: email, password: password);
      
      credential.user?.updateDisplayName(name);

    } on FirebaseException catch (error) {
      return error.message;
    }
    return null;

  }

  Future<String?>loginUser(String name, String email, String password) async{
    try{
      final UserCredential credential = await connection
      .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      return error.message;
    }
    return null;
  }

  Future logOutUser() async{
    try{
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e.toString());

      return null;
    }
  }
 Stream<MyAppUser?> get user =>
      connection.authStateChanges().map(_userFromFirebaseUser);

}

class AuthScrn extends StatefulWidget {
  
  AuthScrn({Key? key}) : super(key: key);

  @override
  State<AuthScrn> createState() => _AuthScrnState();
}

class _AuthScrnState extends State<AuthScrn> {

  bool isLogin = true;

  toggle() {
    setState(() => isLogin = !isLogin);
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return LoginScrn(onClickedSignUp: toggle);
    } else{
      return RegisterNameScrn(onClickedLogin: toggle);
    }
  }
}