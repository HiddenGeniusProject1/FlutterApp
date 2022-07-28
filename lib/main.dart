import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inspired_finalproject/homepage.dart';
import 'package:inspired_finalproject/login.dart';
import 'package:inspired_finalproject/services/auth.dart';
import 'signupPage.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore_for_file: prefer_const_constructors


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return Home();
        }
        return AuthScrn();
      })
    );
  }
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AuthWrapper());
  }
}
// hi
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFA11E1E),
//         title: Text(
//           widget.title, 
//           style: TextStyle(
//             fontFamily: 'Finlandica',
//             fontWeight: FontWeight.bold,
//             fontSize: 25.0,
//           ),
//        ),
//       ),
//       body: Column(
//         children:<Widget> [
//           SafeArea(
//             child: Align(
//               alignment: Alignment.topCenter,
//                 child: Image.asset(
//                   'lib/images/africaCont.png', 
//                   width: 230.0,
//                 ),
//               ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(
//               Radius.circular(12.0),
//             ),
//             color: Color(0xFFA11E1E),
//             ),
//             width: 350.0,
//             height: 100,
//             child: Text(
//               'Welcome to Inspired, the app that celebrates Black culture between users. Please sign in or create an account below.', 
//               textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20.0,
//             ),
//             ),
//           ),
//           Column(
//             children: <Widget>[
//               Icon(
//                 Icons.arrow_downward,
//                 size: 35.0,
//               ),
//             ],
//           ),
//           Column(
//             children: <Widget> [
//             Padding(
//               padding: EdgeInsets.all(15.0),
//               child: FlatButton(
//                 height: 58.0,
//                 minWidth: 250.0,
//               color: Color(0xFFD4AF37),
//               child: Text(
//                 'Sign Up',
//                 style: TextStyle(
//                   fontSize: 35.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => RegisterNameScrn(onClickedLogin: null,))
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//           Column(
//             children: <Widget> [
//             Padding(
//               padding: EdgeInsets.all(43.0),
//               child: FlatButton(
//                 height: 58.0,
//                 minWidth: 250.0,
//               color: Color(0xFFD4AF37),
//               child: Text(
//                 'Login',
//                 style: TextStyle(
//                   fontSize: 35.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginScrn(onClickedSignUp: widget.,))
//                 );
//               },
//               ),
//           ),
//         ],
//       ),    
//     ], 
//     ),
//     );
//   }
// }
