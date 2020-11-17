import 'package:flutter/material.dart';

Widget button(text, color) {
  // return RaisedButton(
  //   onPressed: () {},
  //   child: Text(text),
  //   color: color,
  // );

  return FloatingActionButton.extended(
    onPressed: () {
      // Add your onPressed code here!
    },
    label: Text(text),
    icon: Icon(Icons.thumb_up),
    backgroundColor: color,
  );
}
