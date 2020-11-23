import 'package:flutter/material.dart';

Widget dropDownList(values) {
  return DropdownButton<String>(
    items: values.map((String value) {
      return new DropdownMenuItem<String>(
        value: value,
        child: new Text(value),
      );
    }).toList(),
    onChanged: (_) {},
  );
}
