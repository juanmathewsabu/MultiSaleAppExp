import 'package:flutter/material.dart';
import 'package:login_demo/screens/login_screen.dart';
import 'containers/mainContainer.dart';
import 'package:login_demo/screens/signup.dart';
import 'package:login_demo/routes/routing.dart';
import '../screens/profile_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => login(),
        '/sign_up': (context) => signUp(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
