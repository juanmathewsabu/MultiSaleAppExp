import 'package:flutter/material.dart';
import 'package:login_demo/screens/bloc_Contact.dart';
import 'package:login_demo/screens/terms&conditions.dart';
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
  '/termsAndConditions': (context) => TermsAndConditions(),
  '/host_your_store': (context) => HostingScreen(),
  '/contact_info': (context) => ContactScreen(),
};
