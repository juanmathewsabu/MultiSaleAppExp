import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/containers/contactList.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/widgets/controls/generalPopUp.dart';
import '../widgets/containers/mainContainer.dart';
import 'package:login_demo/models/constants.dart' as constants;
import 'package:login_demo/widgets/controls/inputs.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          backgroundImage: AssetImage("assets/images/blue_background.jpg"),
          mainHeading: constants.contact,
          onPressed: () {
            Navigator.pop(context);
          },
          bodyContent: Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  ContactSection(
                    name: 'Neenu Somy',
                    image:
                        "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    number: '94947076088',
                  ),
                  Divider(
                    height: 10.0,
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: addContactButton(),
      ),
    );
  }

  FloatingActionButton addContactButton() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        showDialog<Widget>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return GeneralPopUp(
              generalPopUpChildren: generalPopUpChild(context),
            );
          },
        );
      },
    );
  }

  ListBody generalPopUpChild(BuildContext context) {
    return ListBody(
      children: <Widget>[
        TextBox(
          labelText: 'Contact Name',
          hintText: 'Contact Name',
        ),
        spacing(10.0, 10.0),
        TextBox(
          labelText: 'Phone Number',
          hintText: 'Phone Number',
        ),
        spacing(10.0, 10.0),
        CustomButton(
            buttonType: 'bottomButtonCurved',
            text: constants.addContact,
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );
  }
}
