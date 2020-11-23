import 'package:flutter/material.dart';

Widget linkText(text) {
  return GestureDetector(
      child: Text(text,
          style: TextStyle(
              decoration: TextDecoration.underline, color: Colors.grey)),
      onTap: () {
        // do what you need to do when "Click here" gets clicked
      });
}

//for mixed texts, eg :  links and texts
Widget textRich(text1, text2, linkColor) {
  return Text.rich(
    TextSpan(
      text: text1,
      style: TextStyle(fontSize: 15),
      children: <TextSpan>[
        TextSpan(
            text: text2,
            style:
                TextStyle(decoration: TextDecoration.none, color: linkColor)),
        // can add more TextSpans here...
      ],
    ),
  );
}

Widget textLabel(text, {style}) {
  return Text(
    text,
    style: style != null ? style : null,
  );
}
