import 'package:flutter/material.dart';
import 'package:the_web/widgets/course_details/about_details.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          AboutDetails(),
        ],
      ),
    );
  }
}
