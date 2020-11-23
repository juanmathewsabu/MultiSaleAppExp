import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/containers/common_button.dart';
import 'package:login_demo/widgets/controls/address_card.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import '../widgets/containers/mainContainer.dart';
import 'package:login_demo/dropdown_list.dart';

const kBottomContainerHght = 60.0;
const kBottomColor = Colors.blue;
const kTextStyleLarge = TextStyle(fontSize: 15.0, color: Colors.white70);

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          subHeading: '',
          mainHeading: 'Address Book',
          bodyContent: ListView(
            children: [
              entryField(
                'Address',
                'Address 1',
              ),
              spacing(10.0, 10.0),
              entryField(
                'City',
                'City',
              ),
              spacing(10.0, 10.0),
              entryField(
                'State',
                'Kerala',
                suffixIcon: Icons.keyboard_arrow_down,
              ),
              spacing(10.0, 10.0),
              DropdownMenu(),
              entryField(
                'Country',
                'India',
                suffixIcon: Icons.keyboard_arrow_down,
              ),
              spacing(10.0, 10.0),
              entryField(
                'PIN Code',
                '678976',
              ),
              spacing(10.0, 10.0),
              checkbox(
                text: 'Make it my Default Delivery Address',
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
              CardContainer(
                icon: Icons.edit_outlined,
                text: 'Current Address Here',
                head: 'Punnolikunnel House,\n Pathar PO, \n Nilambur',
                iconColor: Colors.blue,
              ),
              CardContainer(
                icon: Icons.edit_outlined,
                text: 'Address here',
                head:
                    'MG Road, Opposite Medical Trust,\n Sahodaran Ayyappan Rd, \n near itel it service, Kochi Kerala 689876',
                iconColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class AddressBody extends StatelessWidget {
//   AddressBody({this.textColor, this.text, this.heading});
//   final Color textColor;
//   final String text;
//   final String heading;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//       children: [
//         Container(
//           padding: EdgeInsets.all(0.0),
//           decoration: BoxDecoration(
//               border: Border(bottom: BorderSide(color: Colors.white54))),
//           child: inputField('First Name', 'First Name'),
//         ),
//         SizedBox(
//           height: 10.0,
//         ),
//         Container(
//           padding: EdgeInsets.all(0.0),
//           decoration: BoxDecoration(
//               border: Border(bottom: BorderSide(color: Colors.grey[100]))),
//           child: inputField('Last Name', 'Last Name'),
//         ),
//         SizedBox(
//           height: 10.0,
//         ),
//         Container(
//             padding: EdgeInsets.all(0.0),
//             decoration: BoxDecoration(
//                 border: Border(bottom: BorderSide(color: Colors.grey[100]))),
//             child: DropdownMenu()),
//         SizedBox(
//           height: 10.0,
//         ),
//         Container(
//             padding: EdgeInsets.all(0.0),
//             decoration: BoxDecoration(
//                 border: Border(bottom: BorderSide(color: Colors.grey[100]))),
//             child: DropdownMenu()),
//         SizedBox(
//           height: 10.0,
//         ),
//         Container(
//           padding: EdgeInsets.all(0.0),
//           decoration: BoxDecoration(
//               border: Border(bottom: BorderSide(color: Colors.grey[100]))),
//           child: inputField('Pin Code', 'Pin Code'),
//         ),
//         checkbox(
//           text: 'Make it my default delivery Address',
//           textColor: Colors.grey[400],
//           checkColor: Colors.black54,
//           checkActiveColor: Colors.white12,
//         ),
//         BottomButton(
//           buttonTitle: 'Add to Address Book',
//           onTap: () {
//             Navigator.push(context, MaterialPageRoute());
//           },
//         ),
//         Card(
//             margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//             color: Colors.white,
//             child: ListTile(
//               leading: Icon(
//                 Icons.add,
//                 color: Colors.green,
//               ),
//               title: Text(
//                 'neenusomy20@gmail.com xdjfksdhfkjfe ekrjwerjew rewkjrlkewjrwe rwqkjrhlkwq',
//                 style: TextStyle(color: Colors.teal),
//               ),
//             ))
//       ],
//     ));
//   }
// }
//
// Widget inputField(
//   hintText,
//   labelText,
// ) {
//   return TextField(
//     decoration: InputDecoration(
//         enabledBorder: const OutlineInputBorder(
//           borderSide: const BorderSide(color: Colors.grey, width: 0.0),
//         ),
//         border: const OutlineInputBorder(),
//         labelStyle: new TextStyle(color: Colors.blue),
//         labelText: labelText,
//         hintText: hintText,
//         hintStyle: TextStyle(color: Colors.white54)),
//   );
// }
//
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

class DropdownMenu extends StatefulWidget {
  @override
  _DropdownMenuState createState() => _DropdownMenuState();
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
