import 'package:flutter/material.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/texts.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/models/constants.dart' as constants;
import 'package:login_demo/widgets/controls/dropdownlist.dart';

import 'package:flutter/material.dart';
import '../widgets/containers/mainContainer.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          backgroundImage: AssetImage("assets/images/blue_background.jpg"),
          bodyContent: signUpBody(),
        ),
      ),
    );
  }
}

Widget signUpBody() {
  return SafeArea(
    child: Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spacing(25.0, 25.0),
          textLabel(constants.signUp,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          spacing(10.0, 10.0),
          //username
          textBox(constants.firstName, constants.firstName,
              textStyle: TextStyle(fontSize: 12, height: 0.4)),
          spacing(10.0, 10.0),
          textBox(constants.lastName, constants.lastName,
              textStyle: TextStyle(fontSize: 12, height: 0.4)),
          spacing(10.0, 10.0),
          // dropDownList(constants.genderList),
          spacing(10.0, 10.0),
          textBox(constants.email, 'abc@def.com',
              textStyle: TextStyle(fontSize: 12, height: 0.4)),
          spacing(10.0, 10.0),
          textBox(constants.phone, constants.phone,
              textStyle: TextStyle(fontSize: 12, height: 0.4)),
          // spacing(10.0, 10.0),
          // entryField(constants.phone, constants.referralCode),
          spacing(10.0, 10.0),
          textBox(constants.password, constants.password,
              isPassword: true,
              textStyle: TextStyle(fontSize: 12, height: 0.4)),
          spacing(10.0, 10.0),
          textBox(constants.confirmPassword, constants.confirmPassword,
              isPassword: true,
              textStyle: TextStyle(fontSize: 12, height: 0.4)),
          spacing(30.0, 30.0),
          circleButton(Colors.pink,
              icon: Icons.arrow_forward_ios_sharp,
              iconSize: 30.0,
              padding: 15.0)
        ],
      ),
    ),
  );
}
