import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  ContactSection({this.name, this.number});
  final String name;

  final String number;

  @override
  Widget build(BuildContext context) {
    var nameInitial = name[0].toUpperCase();
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
         
          radius: 35.0,
          child: Text(
            nameInitial,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        title: Text(name),
        subtitle: Text(number),
      ),
    );
  }
}
