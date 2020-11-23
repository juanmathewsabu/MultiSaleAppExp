import 'package:flutter/material.dart';
import 'package:login_demo/screens/address_book.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: kTextStyleLarge,
          ),
        ),
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        height: kBottomContainerHght,
        //color: kBottomColor,
      ),
    );
  }
}
