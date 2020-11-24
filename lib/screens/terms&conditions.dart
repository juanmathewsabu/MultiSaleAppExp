import 'package:flutter/material.dart';
import 'package:login_demo/widgets/containers/boxes.dart';
import 'package:login_demo/widgets/containers/mainContainer.dart';
import '../widgets/controls/expandable.dart';
import '../widgets/controls/read_more.dart';

const termsOfUse =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin ante vitae sagittis congue. Nulla facilisis dolor sit amet ornare commodo.\n\n Aliquam eu tellus et justo tincidunt euismod at non orci. Integer id nulla turpis. \n\n  Duis eget orci vitae ligula mollis laoreet. Etiam a rhoncus arcu, non aliquam metus. Duis justo enim, imperdiet id pellentesque ac, volutpat eu velit. Proin maximus, turpis ac feugiat vulputate, tortor tellus pellentesque tellus, id lacinia nisi quam vitae tellus. Etiam vitae imperdiet dolor. Donec in nunc ac elit sodales posuere.';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          mainHeading: 'Terms & Conditions',
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundImage: null,
          bodyContent: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Exapandable(
                    heading: 'Terms of use',
                    body: ReadMore(bodyText: termsOfUse),
                  ),
                  spacing(15.0, 0.0),
                  Divider(
                    color: Colors.grey,
                  ),
                  spacing(15.0, 0.0),
                  Exapandable(
                      heading: 'Privacy Policy',
                      body: ReadMore(bodyText: termsOfUse)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
