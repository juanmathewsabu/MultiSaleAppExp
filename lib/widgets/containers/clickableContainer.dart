import 'package:flutter/material.dart';

class ClickableContainer extends StatelessWidget {
  final Function onpress;
  final IconData icon;
  final String text;
  final Color iconColor;
  ClickableContainer(
      {@required this.onpress,
      @required this.icon,
      @required this.text,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 120,
        child: Card(
          shadowColor: Colors.grey,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 15, top: 15, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 35,
                  color: iconColor != null ? iconColor : Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: Color(0XFF566573), height: 1.3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
