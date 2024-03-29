import 'package:flutter/material.dart';
import 'package:the_web/widgets/course_details/course_details.dart';
import 'package:the_web/widgets/discord/discord.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(
          height: 30,
        ),
        Discord(),
      ],
    );
  }
}
