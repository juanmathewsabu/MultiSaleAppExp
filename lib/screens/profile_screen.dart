import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/containers/mainContainer.dart';
import '../widgets/containers/clickableContainer.dart';
import '../widgets/containers/boxes.dart';

TextStyle kProfilePageHeadings =
    TextStyle(color: Color(0XFF7f7f7f), fontSize: 13);

class ProfileScreen extends StatelessWidget {
  final List accountSettingList = [
    CardContent(Icons.perm_identity_outlined, 'Personal\nInformation'),
    CardContent(Icons.article_outlined, 'Address Book'),
    CardContent(Icons.person_pin_circle_outlined, 'My Saved \nLocation'),
    CardContent(Icons.list_alt_outlined, 'My Lists'),
    CardContent(Icons.payment_outlined, 'Payment Modes'),
    CardContent(Icons.notifications_none_outlined, 'Notifications'),
  ];

  final List referralList = [
    CardContent(Icons.person_add_alt, 'Invite Friends'),
    CardContent(Icons.local_activity_outlined, 'Rewards & Offers'),
  ];

  final List quickAccessList1 = [
    CardContent(Icons.receipt_long, 'Purchase History'),
    CardContent(Icons.store_outlined, 'Favorite Stores'),
  ];

  final List hostingList = [
    CardContent(Icons.home_outlined, 'Host your Store'),
    CardContent(Icons.contact_page_outlined, 'Contacts'),
  ];

  final List helpsAndSupportList = [
    CardContent(Icons.flare_sharp, 'How Kriips Works'),
    CardContent(Icons.chat_bubble_outline, 'Feedback'),
  ];
  final List quickAccessList2 = [
    CardContent(Icons.description_outlined, 'Terms &\nConditions'),
    CardContent(Icons.power_settings_new, 'Logout'),
  ];

  @override
  Widget build(BuildContext context) {
    Function getRoutes(String text) {
      int i = 0;
      switch (text) {
        case 'Personal\nInformation':
          {
            return () {
              print(i + 1);
              Navigator.pushNamed(context, '/personal_information');
            };
          }
        case 'Address Book':
          {
            return () {
              Navigator.pushNamed(context, '/address_book');
            };
          }
        case 'Terms &\nConditions':
          {
            return () {
              Navigator.pushNamed(context, '/termsAndConditions');
            };
          }
        case 'Host your Store':
          {
            return () {
              Navigator.pushNamed(context, '/host_your_store');
            };
          }
        case 'Contacts':
          {
            return () {
              Navigator.pushNamed(context, '/host_your_store');
            };
          }
        default:
          return () {};
      }
    }

    Container getContent(String heading, List list, String type) {
      int increment = type == 'row' ? 2 : 1;
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                heading,
                style: kProfilePageHeadings,
              ),
            ),
            for (int i = 0; i < list.length; i = i + increment)
              Row(
                children: [
                  Expanded(
                    child: ClickableContainer(
                      onpress: getRoutes(list[i].text),
                      text: list[i].text,
                      icon: list[i].icon,
                      iconColor: list[i].text == 'Logout' ? Colors.pink : null,
                    ),
                  ),
                  type == 'column'
                      ? Expanded(
                          child: Container(),
                        )
                      : list[i + 1] != null
                          ? Expanded(
                              child: ClickableContainer(
                                onpress: getRoutes(list[i].text),
                                text: list[i + 1].text,
                                icon: list[i + 1].icon,
                              ),
                            )
                          : null,
                ],
              )
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContainer(
          backgroundImage: AssetImage("assets/images/blue_background.jpg"),
          profilePicture: AssetImage('assets/images/user.jpg'),
          mainHeading: 'Tovino Thomas',
          subHeading: '+910022335566',
          bodyContent: SingleChildScrollView(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spacing(12.0, 0.0),
                getContent('ACCOUNT SETTINGS', accountSettingList, 'row'),
                spacing(15.0, 0.0),
                getContent('HOSTING', hostingList, 'column'),
                spacing(15.0, 0.0),
                getContent('HELP & SUPPORT', helpsAndSupportList, 'column'),
                spacing(15.0, 0.0),
                getContent('REFERRALS & CREDITS', referralList, 'row'),
                spacing(15.0, 0.0),
                getContent('QUICK ACCESS', quickAccessList1, 'row'),
                spacing(15.0, 0.0),
                getContent('QUICK ACCESS', quickAccessList2, 'column'),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class CardContent {
  final IconData icon;
  final String text;
  CardContent(this.icon, this.text);
}
