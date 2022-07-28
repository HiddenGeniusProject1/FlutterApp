import 'package:flutter/material.dart';
import 'main.dart';
import 'homepage.dart';
import 'services/auth.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore_for_file: prefer_const_constructors



class RegisterNameScrn extends StatefulWidget {
  final onClickedLogin;

  RegisterNameScrn({Key? key, required this.onClickedLogin}) : super(key: key);

  @override
  State<RegisterNameScrn> createState() => _RegisterNameScrnState();
}

class _RegisterNameScrnState extends State<RegisterNameScrn> {
  final _formKey = GlobalKey<FormState>();

  String inputEmail = '';
  String inputPassword = '';
  String errorMessage = '';

  final Authentication _auth = Authentication();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Username:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value == null) {
                    return 'Create Email: (Example@gmail.com)';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    inputEmail = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email: (Example@gmail.com)',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Password:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null) {
                    return 'Create Password';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    inputPassword = value;
                  });
                },
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(errorMessage,
                  style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(44.0),
                    child: FlatButton(
                      height: 58.0,
                      minWidth: 250.0,
                      color: Color(0xFFA11E1E),
                      child: Text(
                        'Go Back',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        widget.onClickedLogin();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(45.0),
                    child: FlatButton(
                      height: 58.0,
                      minWidth: 250.0,
                      color: Color(0xFFA11E1E),
                      child: Text(
                        'Enter',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          final String? result =
                              await _auth.createUser('name', inputEmail, inputPassword);

                          if (result != null) {
                            setState(() {
                              errorMessage = result;
                            });
                          } else {
                            
                          }
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
