import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/signup.dart';
// import 'package:login_demo/screens/personal_information.dart';
import 'package:login_demo/screens/profile_screen.dart';
import '../screens/address_book.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => login(),
  '/sign_up': (context) => signUpBody(),
  '/profile': (context) => ProfileScreen(),
  '/address_book': (context) => AddressScreen(),
};
