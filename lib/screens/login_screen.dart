import 'package:flutter/material.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import 'package:login_demo/widgets/containers/boxes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          spacing(25.0, 25.0),
          //username
          entryField('you@example.com', 'Email ID/Mobile Number'),
          spacing(10.0, 10.0),
          //password
          entryField('Password', 'Password'),
          Container(margin: EdgeInsets.only(top: 25)),
          raisedButton('Sign In', Colors.red),
        ],
      ),
    );
  }
}
