import 'package:flutter/material.dart';
import 'package:the_web/widgets/course_details/course_details.dart';
import 'package:the_web/widgets/discord/discord.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          CourseDetails(),
          Expanded(
            child: Center(
              child: Discord(),
            ),
          )
        ],
      ),
    );
  }
}
