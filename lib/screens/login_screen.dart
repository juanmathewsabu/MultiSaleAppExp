import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/mainContainer.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/texts.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/models/constants.dart' as constants;
import 'package:login_demo/models/controlConstants.dart' as controlConstants;
import 'package:login_demo/models/routeConstants.dart' as routeConstants;
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: MainContainer(
        backgroundImage: AssetImage("assets/images/blue_background.jpg"),
        bodyContent: SingleChildScrollView(child: loginScreen()),
      ),
    );
  }
}

Widget loginScreen() {
  return Container(
    margin: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        spacing(25.0, 25.0),
        Texts(
            textType: controlConstants.labelText,
            text: constants.login,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        spacing(10.0, 10.0),
        //username
        TextBox(
            keyboardTypeInput: TextInputType.emailAddress,
            hintText: 'abc@def.com',
            labelText: constants.emailOrMobile,
            prefixIcon: Icon(
              Icons.account_circle,
            ),
            textStyle: TextStyle(fontSize: 12, height: 0.4)),
        spacing(10.0, 10.0),
        //password
        TextBox(
            hintText: constants.password,
            labelText: constants.password,
            isPassword: true,
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            textStyle: TextStyle(fontSize: 12, height: 0.4)),
        spacing(25.0, 10.0),
        Texts(
            text: constants.forgotPassword,
            textType: controlConstants.linkText),
        spacing(10.0, 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              text: constants.signIn,
              textColor: Colors.white,
              color: Colors.pink,
              iconData: Icons.arrow_forward_ios_sharp,
              iconColor: Colors.white,
              route: routeConstants.profile,
              buttonType: controlConstants.buttonWithRightIcon,
              onPressed: null,
            ),
            Center(
                child: Texts(text: 'or', textType: controlConstants.labelText)),
            spacing(10.0, 10.0),
            GoogleSignInButton(borderRadius: 10.0, onPressed: () {}),
            spacing(10.0, 10.0),
            FacebookSignInButton(
              borderRadius: 10.0,
              onPressed: () {},
            ),
          ],
        ),
        spacing(30.0, 10.0),
        Center(
            child: Texts(
                text1: constants.newToKriips,
                text2: constants.signUp,
                route: routeConstants.signUp,
                textType: controlConstants.richText,
                linkColor: Colors.pink))
      ],
    ),
  );
}
