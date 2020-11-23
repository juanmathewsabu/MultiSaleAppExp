import 'package:flutter/material.dart';
import 'package:login_demo/dropdown_list.dart';
import 'package:login_demo/widgets/containers/mainContainer.dart';

const kBottomContainerHght = 60.0;
const kBottomColor = Colors.blue;
const kTextStyleLarge = TextStyle(fontSize: 15.0, color: Colors.white70);

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContainer(
        backgroundImage: AssetImage('images/blue_background.jpg'),
        mainHeading: 'Address Book',
        bodyContent: AddressBody(text: 'Address', textColor: Colors.black),
      ),
    );
  }
}

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

class AddressBody extends StatelessWidget {
  AddressBody({this.textColor, this.text, this.heading});
  final Color textColor;
  final String text;
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white54))),
          child: inputField('First Name', 'First Name'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[100]))),
          child: inputField('Last Name', 'Last Name'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
            padding: EdgeInsets.all(0.0),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[100]))),
            child: DropdownMenu()),
        SizedBox(
          height: 10.0,
        ),
        Container(
            padding: EdgeInsets.all(0.0),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[100]))),
            child: DropdownMenu()),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[100]))),
          child: inputField('Pin Code', 'Pin Code'),
        ),
        checkbox(
          text: 'Make it my default delivery Address',
          textColor: Colors.grey[400],
          checkColor: Colors.black54,
          checkActiveColor: Colors.white12,
        ),
        BottomButton(
          buttonTitle: 'Add to Address Book',
          onTap: () {
            Navigator.push(context, MaterialPageRoute());
          },
        ),
        Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.add,
                color: Colors.green,
              ),
              title: Text(
                'neenusomy20@gmail.com xdjfksdhfkjfe ekrjwerjew rewkjrlkewjrwe rwqkjrhlkwq',
                style: TextStyle(color: Colors.teal),
              ),
            ))
      ],
    ));
  }
}

Widget inputField(
  hintText,
  labelText,
) {
  return TextField(
    decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 0.0),
        ),
        border: const OutlineInputBorder(),
        labelStyle: new TextStyle(color: Colors.blue),
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white54)),
  );
}

class DropdownMenu extends StatefulWidget {
  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

List<DropdownMenuItem> getDropdownItems() {
  List<DropdownMenuItem<String>> dropdownItems = [];
  for (String item in stateList) {
    var newItem = DropdownMenuItem(
      child: Text(item),
      value: item,
    );
    dropdownItems.add((newItem));
  }
  return dropdownItems;
}

class _DropdownMenuState extends State<DropdownMenu> {
  String selectedItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            borderRadius: BorderRadius.circular(5)),
        //padding: EdgeInsets.fromLTRB(30, 20, 1, 5),
        height: 60.0,
        child: DropdownButton<String>(
          isExpanded: true,
          style: TextStyle(fontSize: 20, color: Colors.black),
          value: selectedItem,
          items: getDropdownItems(),
          onChanged: (value) {
            setState(() {
              selectedItem = value;
            });
          },
          //style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
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
