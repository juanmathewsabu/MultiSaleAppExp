import 'package:flutter/material.dart';
import 'package:login_demo/screens/address_book.dart';

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

Widget raisedButton(text, color, context) {
  return RaisedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AddressScreen()));
    },
    child: Text(text),
    color: color,
  );
}
