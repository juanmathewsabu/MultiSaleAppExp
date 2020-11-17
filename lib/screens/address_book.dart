import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Color(0xFF37b9f7),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background_blue.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: 800.0,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          margin: EdgeInsets.only(top: 70.0),
          child: Column(
            children: <Widget>[
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Address 1',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                      'Ernakulam',
                      style: TextStyle(color: Colors.black),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
