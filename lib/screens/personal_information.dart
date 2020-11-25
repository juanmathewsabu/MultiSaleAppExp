import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/widgets/controls/dropdownlist.dart';
import 'package:login_demo/widgets/controls/generalPopUp.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import '../widgets/containers/mainContainer.dart';
import 'package:login_demo/models/constants.dart' as constants;

class PersonalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MainContainer(
      backgroundImage: AssetImage("assets/images/blue_background.jpg"),
      backgroundColor: Colors.white,
      subHeading: '',
      mainHeading: 'Personal Information',
      onPressed: () {
        Navigator.pop(context);
      },
      bodyContent: personalInformationBody(context),
    ));
  }

  ListView personalInformationBody(BuildContext context) {
    return ListView(
      children: [
        TextBox(
          labelText: 'First Name',
          hintText: 'First Name',
        ),
        spacing(10.0, 10.0),
        TextBox(
          labelText: 'Last Name',
          hintText: 'Last Name',
        ),
        spacing(10.0, 10.0),
        DropDownListCommon(
            values: constants.genderList,
            name: constants.gender,
            hint: constants.gender),
        spacing(10.0, 10.0),
        TextBox(
          labelText: 'Email',
          hintText: 'email@mail.com',
          keyboardTypeInput: TextInputType.emailAddress,
        ),
        spacing(10.0, 10.0),
        TextBox(
          labelText: 'Phone Number',
          hintText: 'Phone Number',
          keyboardTypeInput: TextInputType.number,
        ),
        spacing(10.0, 10.0),
        TextBox(
          labelText: 'Password',
          hintText: 'Password',
          isPassword: true,
          suffixIconButton: passwordEditButton(context),
        ),
        spacing(10.0, 10.0),
        checkbox(
          text: 'Enable FaceID/Fingerprint option for Login',
          textColor: Colors.grey[400],
          checkColor: Colors.black54,
          checkActiveColor: Colors.white12,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40,
          child: ClipOval(
            child: Image.asset("assets/images/fingerprint.png"),
          ),
        ),
        spacing(10.0, 10.0),
        CustomButton(
            buttonType: 'bottomButtonCurved',
            text: constants.update,
            color: Colors.blue,
            onPressed: null),
      ],
    );
  }

  IconButton passwordEditButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.edit_outlined),
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
          labelText: 'Password',
          hintText: 'Password',
          isPassword: true,
        ),
        spacing(10.0, 10.0),
        TextBox(
          labelText: 'New Password',
          hintText: 'New Password',
          isPassword: true,
        ),
        spacing(10.0, 10.0),
        TextBox(
          labelText: 'Confirm New Password',
          hintText: 'Confirm New Password',
          isPassword: true,
        ),
        spacing(10.0, 10.0),
        CustomButton(
            buttonType: 'bottomButtonCurved',
            text: constants.ok,
            color: Colors.blue,
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );
  }
}
