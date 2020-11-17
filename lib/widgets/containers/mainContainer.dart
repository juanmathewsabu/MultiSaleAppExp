import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final AssetImage backgroundImage;
  final AssetImage profilePicture;
  final String mainHeading;
  final String subHeading;
  final Widget bodyContent;

  MainContainer({
    @required this.backgroundImage,
    this.profilePicture,
    @required this.mainHeading,
    this.subHeading,
    @required this.bodyContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage != null
                ? backgroundImage
                : AssetImage("assets/images/blue_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 15),
                  child: Row(
                    children: [
                      if (profilePicture != null)
                        CircleAvatar(
                          backgroundImage: profilePicture,
                          radius: 30,
                        ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (mainHeading != null)
                              Container(
                                margin: EdgeInsets.only(bottom: 6),
                                child: Text(
                                  mainHeading,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            if (subHeading != null)
                              Text(
                                subHeading,
                                style: TextStyle(
                                    color: Color(0XFFabd5f7), fontSize: 14),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: bodyContent,
                ),
              ),
            ],
          ),
        ));
  }
}
