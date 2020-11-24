import 'package:login_demo/screens/address_book.dart';
import 'package:login_demo/screens/personal_information.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.text,
      this.color,
      this.icon,
      this.iconData,
      isCustom = false,
      this.iconColor,
      this.iconSize,
      this.padding,
      @required this.buttonType,
      @required this.onPressed});
  final GestureTapCallback onPressed;
  final String text;
  final Color color;
  final Icon icon;
  final dynamic iconSize;
  final dynamic padding;
  final Color iconColor;
  final String buttonType;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    if (this.buttonType == 'buttonWithRightIcon') {
      return Container(
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey)),
          color: color,
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                  ),
                  alignment: Alignment.center,
                  child: Text(text,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: circleButton(Colors.white,
                      iconName: iconData, iconSize: 15.0, padding: 5.0)),
            ],
          ),
        ),
      );
    }
    if (this.buttonType == 'circleButton') {
      return circleButton(Colors.white,
          iconName: icon, iconSize: 15.0, padding: 5.0);
    }
    if (this.buttonType == 'bottomButtonCurved') {
      return GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              text,
              style: kTextStyleLarge,
            ),
          ),
          margin: EdgeInsets.all(10.0),
          width: double.infinity,
          height: kBottomContainerHght,
          //color: kBottomColor,
        ),
      );
    }
    return null;
  }
}

Widget circleButton(color, {iconName, iconSize, padding}) {
  return Center(
    child: RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: color,
      child: Icon(
        iconName,
        size: iconSize,
      ),
      padding: EdgeInsets.all(padding),
      shape: CircleBorder(),
    ),
  );
}
