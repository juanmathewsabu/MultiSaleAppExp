import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/widgets/controls/address_card.dart';
import 'package:login_demo/widgets/controls/dropdownlist.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import '../widgets/containers/mainContainer.dart';
import 'package:login_demo/dropdown_list.dart';
import 'package:login_demo/models/constants.dart' as constants;

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
              textBox(
                'Address',
                'Address 1',
              ),
              spacing(10.0, 10.0),
              textBox(
                'City',
                'City',
              ),
              spacing(10.0, 10.0),
              // textBox(
              //   'State',
              //   'Kerala',
              //   suffixIcon: Icon(Icons.keyboard_arrow_down),
              //   ),
              DropDownListCommon(values: constants.stateList),
              spacing(10.0, 10.0),
              DropDownListCommon(values: constants.countryList),
              // textBox(
              //   'Country',
              //   'India',
              //   suffixIcon: Icon(Icons.keyboard_arrow_down),
              // ),
              spacing(10.0, 10.0),
              textBox(
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
              CustomButton(
                  buttonType: 'bottomButtonCurved',
                  text: constants.addToAddressBook,
                  color: Colors.blue,
                  onPressed: null),
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

// List<DropdownMenuItem> getDropdownItems() {
//   List<DropdownMenuItem<String>> dropdownItems = [];
//   for (String item in stateList) {
//     var newItem = DropdownMenuItem(
//       child: Text(item),
//       value: item,
//     );
//     dropdownItems.add((newItem));
//   }
//   return dropdownItems;
// }
//
// class DropdownMenu extends StatefulWidget {
//   @override
//   _DropdownMenuState createState() => _DropdownMenuState();
// }
//
// class _DropdownMenuState extends State<DropdownMenu> {
//   String selectedItem;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(2),
//       child: Container(
//         decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey, width: 0.5),
//             borderRadius: BorderRadius.circular(5)),
//         //padding: EdgeInsets.fromLTRB(30, 20, 1, 5),
//         height: 60.0,
//         child: DropdownButton<String>(
//           isExpanded: true,
//           style: TextStyle(fontSize: 20, color: Colors.black),
//           value: selectedItem,
//           items: getDropdownItems(),
//           onChanged: (value) {
//             setState(() {
//               selectedItem = value;
//             });
//           },
//           //style: Theme.of(context).textTheme.title,
//         ),
//       ),
//     );
//   }
// }
