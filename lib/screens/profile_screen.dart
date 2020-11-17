import 'package:flutter/material.dart';
import '../widgets/containers/mainContainer.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          backgroundImage: AssetImage("assets/images/blue_background.jpg"),
          profilePicture: AssetImage('assets/images/user.jpg'),
          mainHeading: 'Tovino Thomas',
          subHeading: '+910022335566',
          bodyContent: Text('Hello'),
        ),
      ),
    );
  }
}
