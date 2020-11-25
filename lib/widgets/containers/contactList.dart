import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  ContactSection({this.name, this.image, this.number});
  final String name;
  final String image;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(image),
          radius: 35.0,
        ),
        title: Text(name),
        subtitle: Text(number),
      ),
    );
  }
}
