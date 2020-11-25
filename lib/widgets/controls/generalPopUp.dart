import 'package:flutter/material.dart';

class GeneralPopUp extends StatefulWidget {
  final Widget generalPopUpChildren;
  GeneralPopUp({@required this.generalPopUpChildren});
  @override
  _GeneralPopUpState createState() => _GeneralPopUpState();
}

class _GeneralPopUpState extends State<GeneralPopUp> {
  @override
  Widget build(BuildContext context) {
    return generalPopUp(context);
  }

  AlertDialog generalPopUp(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(10.0),
      title: Container(
        child: IconButton(
          icon: Icon(
            Icons.close,
            size: 20.0,
            color: Colors.grey[600],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        alignment: Alignment.topRight,
      ),
      titlePadding: EdgeInsets.all(0.0),
      content: SingleChildScrollView(
        child: widget.generalPopUpChildren,
      ),
    );
  }
}
