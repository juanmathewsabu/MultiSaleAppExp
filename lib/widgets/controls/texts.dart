import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  Texts(
      {this.text,
      this.text1,
      this.text2,
      this.linkColor,
      @required this.textType,
      this.route,
      this.style});
  final String text1;
  final String text2;
  final Color linkColor;
  final String text;
  final String textType;
  final TextStyle style;
  final String route;
  @override
  Widget build(BuildContext context) {
    switch (textType) {
      case 'linkText':
        return GestureDetector(
            child: Text(this.text,
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.grey)),
            onTap: () {
              // do what you need to do when "Click here" gets clicked
            });
      case 'richText':
        return SelectableText.rich(
          TextSpan(
            text: text1,
            style: TextStyle(fontSize: 15),
            children: <TextSpan>[
              new TextSpan(
                text: text2,
                style: TextStyle(
                    decoration: TextDecoration.none, color: linkColor),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () => Navigator.pushNamed(context, this.route),
              ),

              // can add more TextSpans here...
            ],
          ),
        );
      case 'labelText':
        return Text(
          text,
          style: style != null ? style : null,
        );
    }
  }
}
