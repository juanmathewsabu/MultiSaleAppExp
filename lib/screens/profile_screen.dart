import 'dart:ffi';

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

  Container getRowContent(String heading, List list) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              heading,
              style: kProfilePageHeadings,
            ),
          ),
          for (int i = 0; i < list.length; i = i + 2)
            Row(
              children: [
                Expanded(
                  child: ClickableContainer(
                    onpress: () {},
                    text: list[i].text,
                    icon: list[i].icon,
                  ),
                ),
                if (list[i + 1] != null)
                  Expanded(
                    child: ClickableContainer(
                      onpress: () {},
                      text: list[i + 1].text,
                      icon: list[i + 1].icon,
                    ),
                  ),
                //  ClickableContainer(),
              ],
            )
        ],
      ),
    );
  }

  Container getColumnContent(
      {String heading,
      String subHeading1,
      IconData icon1,
      String subHeading2,
      IconData icon2,
      Color color,
      int count}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              heading,
              style: kProfilePageHeadings,
            ),
          ),
          Container(
            width: 155,
            child: ClickableContainer(
              onpress: () {},
              text: subHeading1,
              icon: icon1,
              iconColor: null,
            ),
          ),
          if (count == 2)
            Container(
              width: 155,
              child: ClickableContainer(
                onpress: () {},
                text: subHeading2,
                icon: icon2,
                iconColor: color,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                getRowContent('ACCOUNT SETTINGS', accountSettingList),
                spacing(15.0, 0.0),
                getColumnContent(
                    heading: 'HOSTING',
                    subHeading1: 'Host your Store',
                    icon1: Icons.home_filled),
                spacing(15.0, 0.0),
                getColumnContent(
                    heading: 'HELP & SUPPORT',
                    subHeading1: 'How Kriips Works',
                    icon1: Icons.flare_sharp,
                    subHeading2: 'Feedback',
                    count: 2,
                    icon2: Icons.chat_bubble_outline),
                spacing(15.0, 0.0),
                getRowContent('REFERRALS & CREDITS', referralList),
                spacing(15.0, 0.0),
                getRowContent('QUICK ACCESS', quickAccessList1),
                spacing(15.0, 0.0),
                getColumnContent(
                    heading: 'QUICK ACCESS',
                    subHeading1: 'Terms &\nConditions',
                    icon1: Icons.description_outlined,
                    subHeading2: 'Logout',
                    count: 2,
                    icon2: Icons.power_settings_new,
                    color: Color(0XFFFA2F95)),
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
