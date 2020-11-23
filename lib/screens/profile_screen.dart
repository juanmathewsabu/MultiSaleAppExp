import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/containers/mainContainer.dart';
import '../widgets/containers/clickableContainer.dart';

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
          //SizedBox(height: 5, width: double.infinity),
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

  Expanded getExpanded(text, icon) {
    return Expanded(
      child: ClickableContainer(
        onpress: () {},
        text: text,
        icon: icon,
      ),
    );
  }

  Container getColumnContent(String heading, List list) {
    return Container(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              heading,
              style: kProfilePageHeadings,
            ),
          ),
          Column(
            children: [
              for (int i = 0; i < list.length; i = i + 1)
                getExpanded(list[i].text, list[i].icon)

              //  ClickableContainer(),
            ],
          )
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                getRowContent('ACCOUNT SETTINGS', accountSettingList),
                SizedBox(
                  height: 15,
                ),
                getRowContent('REFERRALS & CREDITS', referralList),
                SizedBox(
                  height: 15,
                ),
                getRowContent('QUICK ACCESS', quickAccessList1),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
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
