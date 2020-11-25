import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_demo/blocs/contact_bloc/contact_bloc.dart';
import 'package:login_demo/models/contactConst.dart';

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
    return BlocProvider<ContactBloc>(
      create: (context) => ContactBloc(),
      child: MaterialApp(
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
                child: BlocBuilder<ContactBloc, ContactState>(
                    builder: (context, state) {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        for (int i = 0; i < state.contacts.length; i++)
                          customListItem(state.contacts[i].name,
                              state.contacts[i].phoneNumber),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          floatingActionButton: addContactButton(),
        ),
      ),
    );
  }

  Widget customListItem(String name, String number) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactSection(
          name: name,
          image:
              "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          number: number,
        ),
        Divider(
          height: 10.0,
        )
      ],
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
          keyboardTypeInput: TextInputType.number,
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
