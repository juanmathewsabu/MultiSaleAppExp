import 'package:flutter/material.dart';

Widget textBox(hintText, labelText,
    {isPassword: false, prefixIcon, suffixIcon, textStyle}) {
  return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
          // prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          // suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          border: OutlineInputBorder(),
          // hintText: hintText,
          labelText: labelText),
      style: textStyle != null ? textStyle : null);
}
