import 'package:flutter/material.dart';
import 'package:login_demo/screens/address_book.dart';

Widget textBox(hintText, labelText,
    {isPassword: false, prefixIcon, suffixIcon, textStyle}) {
  return Padding(
      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
      child: Stack(
        //try to allow drawing label Text over the container
        children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Material(
                borderRadius: BorderRadius.circular(5.0),
                elevation: 5.0,
                shadowColor: Colors.grey,
                child: TextField(
                  autofocus: false,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    // prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
                    // suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(8.0),
                    // hintText: hintText,
                    prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
                    suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.blue),
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
              labelText,
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

Widget raisedButton(text, color, context) {
  return RaisedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AddressScreen()));
    },
    child: Text(text),
    color: color,
  );
}

Widget checkbox({text, textColor, checkColor, checkActiveColor}) {
  return Row(
    children: [
      Checkbox(
        value: true,
        checkColor: checkColor,
        activeColor: checkActiveColor,
        onChanged: (bool value) {},
      ),
      Text(
        text,
        style: TextStyle(color: textColor),
      ),
    ],
  );
}
