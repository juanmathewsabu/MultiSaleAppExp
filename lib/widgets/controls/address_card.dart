import 'dart:ui';

import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final IconData icon;
  final String head;
  final String text;
  final Color iconColor;
  CardContainer(
      {@required this.icon,
      @required this.head,
      @required this.text,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        shadowColor: Colors.white60,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 0, left: 10, top: 10, bottom: 5),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.black26, height: 1.3, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                  Spacer(),
                  Icon(
                    icon,
                    size: 35,
                    color: iconColor != null ? iconColor : Colors.blue,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    head,
                    style: TextStyle(
                        color: Colors.black54, height: 1.3, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
