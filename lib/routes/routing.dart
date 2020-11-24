import 'package:flutter/material.dart';
import 'package:login_demo/screens/hosting_store.dart';
import '../screens/login_screen.dart';
import '../screens/signup.dart';
import 'package:login_demo/screens/personal_information.dart';
import 'package:login_demo/screens/profile_screen.dart';
import '../screens/address_book.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => LogIn(),
  '/sign_up': (context) => SignUp(),
  '/profile': (context) => ProfileScreen(),
  '/address_book': (context) => AddressScreen(),
  '/personal_information': (context) => PersonalInformation(),
  '/host_your_store': (context) => HostingScreen(),
};
