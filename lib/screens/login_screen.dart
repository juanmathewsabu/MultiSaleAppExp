import 'package:flutter/material.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/texts.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/models/constants.dart' as constants;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          spacing(25.0, 25.0),
          //username
          entryField('you@example.com', constants.emailOrMobile,
              prefixIcon: Icons.account_circle),
          spacing(10.0, 10.0),
          //password
          entryField(constants.password, constants.password,
              isPassword: true,
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility,
              textStyle: TextStyle(fontSize: 12, height: 0.4)),
          spacing(10.0, 10.0),
          linkText(constants.forgotPassword),
          spacing(10.0, 10.0),
          button(constants.signIn, Colors.pink),
          spacing(10.0, 10.0),
          button(constants.continueWithGoogle, Colors.white),
          spacing(10.0, 10.0),
          button(constants.continueWithFacebook, Colors.white),
          spacing(30.0, 30.0),
          textRich(constants.newToKriips, constants.signUp, Colors.pink)
        ],
      ),
    );
  }
}
