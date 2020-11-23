import 'package:flutter/material.dart';

Widget buttonWithRightIcon(text, color, {icon, isCustom = false, iconColor}) {
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
                  icon: icon, iconSize: 15.0, padding: 5.0)),
        ],
      ),
    ),
  );
}

Widget circleButton(color, {icon, iconSize, padding}) {
  return Center(
    child: RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: color,
      child: Icon(
        icon,
        size: iconSize,
      ),
      padding: EdgeInsets.all(padding),
      shape: CircleBorder(),
    ),
  );
}
