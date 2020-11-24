import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/containers/mainContainer.dart';
import 'package:login_demo/models/constants.dart' as constants;
import 'package:login_demo/widgets/controls/actionWidgets.dart';
import 'package:login_demo/models/controlConstants.dart' as controlConstants;

const kTextStyleHeading = TextStyle(
    fontSize: 35.0, fontWeight: FontWeight.w400, color: Colors.black87);
const kStyleSmallText = TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300);

class HostingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          subHeading: '',
          mainHeading: constants.hostYourStore,
          backgroundColor: Color(0xFFffffffff),
          onPressed: () {
            Navigator.pop(context);
          },
          bodyContent: SingleChildScrollView(
            child: Container(
              //width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image(
                      image: AssetImage("assets/images/hostStore_img.PNG"),
                      fit: BoxFit.fill),
                  spacing(10.0, 0.0),
                  Text(
                    'Host when and how you want',
                    style: kTextStyleHeading,
                  ),
                  spacing(10.0, 0.0),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,\n \n'
                    ' when an unknown printer It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                    style: kStyleSmallText,
                  ),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Check out FAQs about hosting',
                        style: TextStyle(color: Colors.blue, fontSize: 15.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                  spacing(20.0, 0.0),
                  CustomButton(
                    text: constants.becomeHost,
                    textColor: Colors.white,
                    color: Colors.blue,
                    borderRadius: 5.0,
                    margin: 0.0,
                    buttonHeight: 60.0,
                    //route: routeConstants.profile,
                    buttonType: controlConstants.bottomButtonCurved,
                    onPressed: null,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
