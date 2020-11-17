import 'package:flutter/material.dart';

Widget entryField(hintText, labelText,
    {isPassword: false, prefixIcon, suffixIcon}) {
  return TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        border: OutlineInputBorder(),
        hintText: hintText,
        labelText: labelText),
  );
}

Widget raisedButton(text, color) {
  return RaisedButton(
    onPressed: () {},
    child: Text(text),
    color: color,
  );
}
