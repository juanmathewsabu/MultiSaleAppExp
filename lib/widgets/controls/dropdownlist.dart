import 'package:flutter/material.dart';

class DropDownListCommon extends StatefulWidget {
  DropDownListCommon({this.values});
  final List<String> values;
  @override
  _DDLState createState() => _DDLState();
}

class _DDLState extends State<DropDownListCommon> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white, width: 3.0),
            borderRadius: BorderRadius.circular(6)),
        child: DropdownButton<String>(
          value: _value,
          dropdownColor: Colors.white,
          elevation: 5,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 36,
          isExpanded: true,
          hint: Text('Gender'),
          style: TextStyle(fontSize: 20, color: Colors.black),
          items: widget.values.map<DropdownMenuItem<String>>((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
          },
        ),
      ),
    );
  }
}
