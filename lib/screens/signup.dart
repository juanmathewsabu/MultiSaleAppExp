import 'package:flutter/material.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/texts.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/models/constants.dart' as constants;
import 'package:login_demo/widgets/controls/dropdownlist.dart';
import 'package:flutter/material.dart';
import '../widgets/containers/mainContainer.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: MainContainer(
        backgroundImage: AssetImage("assets/images/blue_background.jpg"),
        bodyContent: signUpBody(),
      ),
    );
  }
}

Widget signUpBody() {
  return SingleChildScrollView(
    child: SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spacing(25.0, 25.0),
            Texts(
                text: constants.signUp,
                textType: 'labelText',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            spacing(10.0, 10.0),
            //username
            textBox(constants.firstName, constants.firstName,
                textStyle: TextStyle(fontSize: 12, height: 0.4)),
            spacing(10.0, 10.0),
            textBox(constants.lastName, constants.lastName,
                textStyle: TextStyle(fontSize: 12, height: 0.4)),
            spacing(10.0, 10.0),
            DropDownListCommon(values: constants.genderList),
            spacing(10.0, 10.0),
            textBox(constants.email, constants.email,
                textStyle: TextStyle(fontSize: 12, height: 0.4)),
            spacing(10.0, 10.0),
            textBox(constants.phone, constants.phone,
                textStyle: TextStyle(fontSize: 12, height: 0.4)),
            spacing(10.0, 10.0),
            textBox(constants.referralCode, constants.referralCode,
                textStyle: TextStyle(fontSize: 12, height: 0.4)),
            spacing(10.0, 10.0),
            textBox(constants.password, constants.password,
                isPassword: true,
                textStyle: TextStyle(fontSize: 12, height: 0.4)),
            spacing(10.0, 10.0),
            textBox(constants.confirmPassword, constants.confirmPassword,
                isPassword: true,
                textStyle: TextStyle(fontSize: 12, height: 0.4)),
            spacing(30.0, 30.0),
            CustomButton(
                color: Colors.pink,
                iconData: Icons.arrow_forward_ios_sharp,
                buttonType: 'circleButton',
                route: '/',
                iconSize: 30.0,
                padding: 15.0)
          ],
        ),
      ),
    ),
  );
}
