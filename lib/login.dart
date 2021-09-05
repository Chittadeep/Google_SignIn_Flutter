

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'GoogleSignInApi.dart';
import 'loggedin.dart';

class Login extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInButton(
            Buttons.Google,
            onPressed: () async {
              final user = await GoogleSignInApi.login();

              if (user == null) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Sign In failed')));
              } else {
                print(user.email);
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => LoggedIn(
                          user: user,
                        )));
              }
            },
          ),
        ],
      ),
    )));
  }
}