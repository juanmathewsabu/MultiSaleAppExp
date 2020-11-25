import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/widgets/controls/address_card.dart';
import 'package:login_demo/widgets/controls/dropdownlist.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import '../widgets/containers/mainContainer.dart';
import 'package:login_demo/models/constants.dart' as constants;
import 'package:login_demo/models/controlConstants.dart' as controlConstants;

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
          mainHeading: constants.addressBook,
          onPressed: () {
            Navigator.pop(context);
          },
          bodyContent: ListView(
            children: [
              TextBox(
                hintText: constants.address,
                labelText: constants.address1,
              ),
              spacing(10.0, 10.0),
              TextBox(
                hintText: constants.city,
                labelText: constants.city,
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
                hintText: constants.pinCode,
                labelText: constants.pinExample,
                keyboardTypeInput: TextInputType.number,
              ),
              spacing(10.0, 10.0),
              checkbox(
                text: constants.checkBoxText,
                textColor: Colors.grey[400],
                checkColor: Colors.black54,
                checkActiveColor: Colors.white12,
              ),
              CustomButton(
                  buttonType: controlConstants.bottomButtonCurved,
                  text: constants.addToAddressBook,
                  color: Colors.blue,
                  buttonHeight: 60.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact_info');
                  }),
              CardContainer(
                icon: Icons.edit_outlined,
                text: 'Current Address Here',
                head: 'Punnolikunnel House,\nPathar PO, \nNilambur',
                iconColor: Colors.blue,
              ),
              CardContainer(
                icon: Icons.edit_outlined,
                text: 'Address here',
                head:
                    'MG Road, Opposite Medical Trust,\nSahodaran Ayyappan Rd, \nnear itel it service, Kochi Kerala 689876',
                iconColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
