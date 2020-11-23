import 'package:flutter/material.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/texts.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/models/constants.dart' as constants;
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

Widget loginScreen() {
  return Container(
    margin: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        spacing(25.0, 25.0),
        textLabel('Log In',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        spacing(10.0, 10.0),
        //username
        textBox('abc@def.com', constants.emailOrMobile,
            prefixIcon: Icons.account_circle,
            textStyle: TextStyle(fontSize: 12, height: 0.4)),
        spacing(10.0, 10.0),
        //password
        textBox(constants.password, constants.password,
            isPassword: true,
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility,
            textStyle: TextStyle(fontSize: 12, height: 0.4)),
        spacing(10.0, 10.0),
        linkText(constants.forgotPassword),
        spacing(10.0, 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonWithRightIcon(constants.signIn, Colors.pink,
                icon: Icons.arrow_forward_ios_sharp, iconColor: Colors.white),
            GoogleSignInButton(onPressed: () {}),
            spacing(10.0, 10.0),
            FacebookSignInButton(
              onPressed: () {},
            ),
          ],
        ),
        spacing(10.0, 10.0),
        Center(
            child:
                textRich(constants.newToKriips, constants.signUp, Colors.pink))
      ],
    ),
  );
}
