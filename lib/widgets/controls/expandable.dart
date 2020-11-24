import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Exapandable extends StatelessWidget {
  final String heading;
  final Widget body;
  Exapandable({@required this.heading, this.body});

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      iconColor: Colors.black,
      header: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          heading,
          style: TextStyle(fontSize: 16),
        ),
      ),
      expanded: body,
    );
  }
}
