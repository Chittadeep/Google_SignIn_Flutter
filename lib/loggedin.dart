import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in/main.dart';

class LoggedIn extends StatelessWidget {
  final GoogleSignInAccount user;
  final navigatorKey = GlobalKey<NavigatorState>();

   LoggedIn({
    Key key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {   
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user.photoUrl),
              ),
              Text(user.displayName),
              Text(user.email)
            ],
          ),
        ),
      ),
    );
  }
}
