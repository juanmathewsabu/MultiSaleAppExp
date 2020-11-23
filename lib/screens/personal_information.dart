import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import '../widgets/containers/mainContainer.dart';

class PersonalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          backgroundImage: AssetImage("assets/images/blue_background.jpg"),
          subHeading: '',
          mainHeading: 'Personal Information',
          bodyContent: ListView(
            children: [
              textBox(
                'First Name',
                'First Name',
              ),
              spacing(10.0, 10.0),
              textBox(
                'Last Name',
                'Last Name',
              ),
              spacing(10.0, 10.0),
              textBox(
                'Gender',
                'Male',
                suffixIcon: Icons.keyboard_arrow_down,
              ),
              spacing(10.0, 10.0),
              textBox(
                'email@mail.com',
                'Email',
              ),
              spacing(10.0, 10.0),
              textBox(
                '+91 0022335566',
                'Phone Number',
              ),
              spacing(10.0, 10.0),
              textBox(
                'Password',
                'Password',
                isPassword: true,
              ),
              spacing(10.0, 10.0),
              checkbox(
                text: 'Enable FaceID/Fingerprint option for Login',
                textColor: Colors.grey[400],
                checkColor: Colors.black54,
                checkActiveColor: Colors.white12,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                child: ClipOval(
                  child: Image.asset("assets/images/fingerprint.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//
// class PersonalInformation1 extends StatefulWidget {
//   PersonalInformation1({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _PersonalInformationState createState() => _PersonalInformationState();
// }
//
// class _PersonalInformationState extends State<PersonalInformation1> {
//   FocusNode _focusNode = new FocusNode();
//
//   @override
//   void initState() {
//     super.initState();
//     //Add Listener to know when is updated focus
//     _focusNode.addListener(_onLoginUserNameFocusChange);
//   }
//
//   @override
//   void dispose() {
//     //Dispose Listener to know when is updated focus
//     _focusNode.addListener(_onLoginUserNameFocusChange);
//     super.dispose();
//   }
//
//   void _onLoginUserNameFocusChange() {
//     //Force updated once if focus changed
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: Center(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               //original one, just to check the style
//               Padding(
//                   padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
//                   child: TextField(
//                       maxLines: 2,
//                       decoration: InputDecoration(
//                         labelText: 'Full Name',
//                         border: OutlineInputBorder(),
//                       ))),
//
//               //The 5,5,5,5 padding just for easier look, you can start from the Stack
//               Padding(
//                   padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
//                   child: Stack(
//                     //try to allow drawing label Text over the container
//                     children: <Widget>[
//                       Padding(
//                           // this padding is to allow the Text draw on the top of the border
//                           //since default font size is 12, half of it
//                           padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
//                           child: TextField(
//                             // the main TextField
//                             maxLines: 2,
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                             ),
//                             //This is used to listen the focus of this TextField
//                             focusNode: _focusNode,
//                           )),
//                       Container(
//                         //position label
//                         margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
//                         padding: EdgeInsets.fromLTRB(3, 0, 3,
//                             0), // input outline default seems using 4.0 as padding from their source
//                         child: Text(
//                           'First Name',
//                           style: TextStyle(
//                             fontSize: 10,
//                             color:
//                                 _focusNode.hasFocus ? Colors.blue : Colors.grey,
//                           ),
//                         ),
//                         color:
//                             Colors.white, //just to cover the intercepted border
//                       )
//                     ],
//                   )),
//             ]),
//       )),
//     );
//   }
// }
