import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/mainContainer.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/texts.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/models/constants.dart' as constants;
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: MainContainer(
        backgroundImage: AssetImage("assets/images/blue_background.jpg"),
        bodyContent: loginScreen(),
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
            textType: 'labelText',
            text: 'Log In',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        spacing(10.0, 10.0),
        //username
        textBox('abc@def.com', constants.emailOrMobile,
            prefixIcon: Icon(
              Icons.account_circle,
            ),
            textStyle: TextStyle(fontSize: 12, height: 0.4)),
        spacing(10.0, 10.0),
        //password
        textBox(constants.password, constants.password,
            isPassword: true,
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            textStyle: TextStyle(fontSize: 12, height: 0.4)),
        spacing(10.0, 10.0),
        Texts(text: constants.forgotPassword, textType: 'linkText'),
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
              route: '/profile',
              buttonType: 'buttonWithRightIcon',
            ),
            GoogleSignInButton(onPressed: () {}),
            spacing(10.0, 10.0),
            FacebookSignInButton(
              onPressed: () {},
            ),
          ],
        ),
        spacing(10.0, 10.0),
        Center(
            child: Texts(
                text1: constants.newToKriips,
                text2: constants.signUp,
                route: '/sign_up',
                textType: 'richText',
                linkColor: Colors.pink))
      ],
    ),
  );
}
