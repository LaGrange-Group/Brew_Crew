import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign in Anon'),
          onPressed: () async {
            User user = await _auth.signInAnon();
            if (user != null){
              print('User Signed In');
              print(user.uid);
            }else{
              print('Error Signing In');
            }
          },
        ),
      ),
    );
  }
}
