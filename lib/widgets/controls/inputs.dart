import 'package:flutter/material.dart';

Widget entryField(hintText, labelText, {isPassword: false}) {
  return TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
        border: OutlineInputBorder(), hintText: hintText, labelText: labelText),
  );
}

Widget raisedButton(text, color) {
  return RaisedButton(
    onPressed: () {},
    child: Text(text),
    color: color,
  );
}
