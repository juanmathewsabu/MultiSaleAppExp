import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMore extends StatelessWidget {
  final String bodyText;
  ReadMore({@required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      bodyText,
      trimLines: 2,
      trimMode: TrimMode.Length,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Show less',
      style: TextStyle(fontSize: 14),
    );
  }
}
