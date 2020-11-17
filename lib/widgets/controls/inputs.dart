import 'package:flutter/material.dart';

Widget entryField(hintText, labelText,
    {isPassword: false, prefixIcon, suffixIcon, textStyle: TextStyle}) {
  return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
          border: OutlineInputBorder(),
          hintText: hintText,
          labelText: labelText),
      style: textStyle);
}
