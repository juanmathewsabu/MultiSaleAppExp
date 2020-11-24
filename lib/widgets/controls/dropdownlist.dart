import 'package:flutter/material.dart';
import 'package:login_demo/models/constants.dart' as constants;

//General drop down list
class DropDownListCommon extends StatefulWidget {
  DropDownListCommon(
      {@required this.values, @required this.name, @required this.hint});
  final List<String> values;
  final String name;
  final String hint;
  @override
  _DDLState createState() => _DDLState();
}

class _DDLState extends State<DropDownListCommon> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
        child: Stack(
          //try to allow drawing label Text over the container
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Material(
                  borderRadius: BorderRadius.circular(5.0),
                  elevation: constants.textBoxShadowElevation,
                  shadowColor: Colors.grey,
                  child: Container(
                    padding: EdgeInsets.only(left: 8.0),
                    child: DropdownButtonHideUnderline(
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Colors.red,
                          primaryColor: Colors.red,
                        ),
                        child: DropdownButton<String>(
                          value: _value,
                          dropdownColor: Colors.white,
                          focusColor: Colors.grey,
                          elevation: 5,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          isExpanded: true,
                          hint: Text(widget.name),
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          items: widget.values
                              .map<DropdownMenuItem<String>>((String value) {
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
                    ),
                  ),
                )),
            Container(
              //position label
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              padding: EdgeInsets.fromLTRB(3, 0, 3,
                  0), // input outline default seems using 4.0 as padding from their source
              child: Text(
                widget.name,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blue,
                ),
              ),
              color: Colors.white, //just to cover the intercepted border
            )
          ],
        ));
  }
}
