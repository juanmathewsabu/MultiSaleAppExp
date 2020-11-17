import 'package:flutter/material.dart';
import 'package:login_demo/screens/login_screen.dart';
import 'containers/mainContainer.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          backgroundImage: AssetImage("assets/images/blue_background.jpg"),
          mainHeading: '',
          subHeading: '',
          bodyContent: LoginScreen(),
        ),
      ),
    );
  }
}
