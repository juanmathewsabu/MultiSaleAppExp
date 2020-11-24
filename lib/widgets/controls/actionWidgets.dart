import 'package:login_demo/screens/personal_information.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.text,
      this.route,
      this.color,
      this.icon,
      this.iconData,
      isCustom = false,
      this.iconColor,
      this.iconSize,
      this.padding,
      this.textColor,
      @required this.buttonType,
      @required this.onPressed});
  final GestureTapCallback onPressed;
  final String text;
  //bg color
  final Color color;
  final Color textColor;
  final Icon icon;
  final String route;
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
          onPressed: () {
            if (route != null) Navigator.pushNamed(context, route);
          },
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
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: circleButton(context, Colors.white,
                      iconName: iconData,
                      iconSize: 15.0,
                      padding: 5.0,
                      route: this.route)),
            ],
          ),
        ),
      );
    }
    if (this.buttonType == 'circleButton') {
      return circleButton(context, this.color,
          iconName: this.iconData,
          iconSize: this.iconSize,
          padding: this.padding,
          route: this.route);
    }
    return null;
  }
}

Widget circleButton(context, color, {iconName, iconSize, padding, route}) {
  return Center(
    child: RawMaterialButton(
      onPressed: () {
        if (route != null) Navigator.pushNamed(context, route);
      },
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
