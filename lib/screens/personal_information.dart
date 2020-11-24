import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/containers/common_button.dart';
import 'package:login_demo/widgets/controls/inputs.dart';
import '../widgets/containers/mainContainer.dart';

class PersonalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              suffixIcon: Icon(
                Icons.keyboard_arrow_down,
              ),
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
              suffixIcon: IconButton(
                icon: Icon(Icons.edit_outlined),
                onPressed: () {
                  showDialog<Widget>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.all(10.0),
                        title: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              size: 20.0,
                              color: Colors.grey[600],
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          alignment: Alignment.topRight,
                        ),
                        titlePadding: EdgeInsets.all(0.0),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              // Container(
                              //   child: IconButton(
                              //     icon: Icon(
                              //       Icons.close,
                              //       size: 15.0,
                              //     ),
                              //     onPressed: () {
                              //       Navigator.pop(context);
                              //     },
                              //   ),
                              //   alignment: Alignment.topRight,
                              // ),
                              // spacing(10.0, 10.0),
                              textBox(
                                'Password',
                                'Password',
                                isPassword: true,
                              ),
                              spacing(10.0, 10.0),
                              textBox(
                                'New Password',
                                'New Password',
                                isPassword: true,
                              ),
                              spacing(10.0, 10.0),
                              textBox(
                                'Confirm New Password',
                                'Confirm New Password',
                                isPassword: true,
                              ),
                              spacing(10.0, 10.0),
                              BottomButton(
                                buttonTitle: 'OK',
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        // actions: <Widget>[
                        //   TextButton(
                        //     child: Text('Approve'),
                        //     onPressed: () {
                        //       Navigator.of(context).pop();
                        //     },
                        //   ),
                        // ],
                      );
                    },
                  );
                },
              ),
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
            spacing(10.0, 10.0),
            BottomButton(
              buttonTitle: 'Update',
              onTap: () {
                Navigator.push(context, MaterialPageRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
