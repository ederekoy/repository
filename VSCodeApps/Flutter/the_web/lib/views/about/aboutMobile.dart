import 'package:flutter/material.dart';
import 'package:the_web/widgets/course_details/about_details.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AboutDetails(),
      ],
    );
  }
}
