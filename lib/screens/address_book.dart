import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/widgets/controls/address_card.dart';
import 'package:login_demo/widgets/controls/dropdownlist.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import '../widgets/containers/mainContainer.dart';
import 'package:login_demo/dropdown_list.dart';
import 'package:login_demo/models/constants.dart' as constants;

const kBottomContainerHght = 50.0;
const kBottomColor = Colors.blue;
const kTextStyleLarge = TextStyle(fontSize: 15.0, color: Colors.white70);

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          subHeading: '',
          mainHeading: 'Address Book',
          onPressed: () {
            Navigator.pop(context);
          },
          bodyContent: ListView(
            children: [
              TextBox(
                hintText: 'Address',
                labelText: 'Address 1',
              ),
              spacing(10.0, 10.0),
              TextBox(
                hintText: 'City',
                labelText: 'City',
              ),
              spacing(10.0, 10.0),
              DropDownListCommon(
                  values: constants.stateList,
                  name: constants.state,
                  hint: constants.state),
              spacing(10.0, 10.0),
              DropDownListCommon(
                  values: constants.countryList,
                  name: constants.country,
                  hint: constants.country),
              spacing(10.0, 10.0),
              TextBox(
                hintText: 'PIN Code',
                labelText: '678976',
              ),
              spacing(10.0, 10.0),
              checkbox(
                text: 'Make it my Default Delivery Address',
                textColor: Colors.grey[400],
                checkColor: Colors.black54,
                checkActiveColor: Colors.white12,
              ),
              CustomButton(
                  buttonType: 'bottomButtonCurved',
                  text: constants.addToAddressBook,
                  color: Colors.blue,
                  onPressed: null),
              CardContainer(
                icon: Icons.edit_outlined,
                text: 'Current Address Here',
                head: 'Punnolikunnel House,\n Pathar PO, \n Nilambur',
                iconColor: Colors.blue,
              ),
              CardContainer(
                icon: Icons.edit_outlined,
                text: 'Address here',
                head:
                    'MG Road, Opposite Medical Trust,\n Sahodaran Ayyappan Rd, \n near itel it service, Kochi Kerala 689876',
                iconColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
