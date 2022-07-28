import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:inspired_finalproject/login.dart';
import 'package:inspired_finalproject/models/chatUsers.dart';
import 'package:inspired_finalproject/signupPage.dart';
class Authentication{
  FirebaseAuth _auth = FirebaseAuth.instance;

   Stream<User?> get authStateChanges => _auth.authStateChanges();
  //create MyAppUser from a Firebase User
  // ignore: missing_return
  MyAppUser? _userFromFirebaseUser(User? user) {
    return user != null ? MyAppUser(uid: user.uid, email: user.email, name: user.displayName,) : null;
  }

  Future<String?>createUser(String name, String email, String password) async{
    try{
      final UserCredential credential = await _auth
      .createUserWithEmailAndPassword(email: email, password: password);
      
      credential.user?.updateDisplayName(name);

    } on FirebaseException catch (error) {
      return error.message;
    }
    return null;

  }

  Future<String?>loginUser(String name, String email, String password) async{
    try{
      final UserCredential credential = await _auth
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

    User? get currentUser  => FirebaseAuth.instance.currentUser;
   
  
 Stream<MyAppUser?> get user =>
      _auth.authStateChanges().map(_userFromFirebaseUser);

}
// AUTH SCRN
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
      return Scaffold(body: LoginScrn(onClickedSignUp: toggle));
    } else{
      return Scaffold(body: RegisterNameScrn(onClickedLogin: toggle));
    }
  }

  }
