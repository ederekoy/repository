import 'package:flutter/material.dart';
import 'package:the_web/widgets/centered_view/centered_view.dart';
import 'package:the_web/widgets/course_details/course_details.dart';
import 'package:the_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:the_web/widgets/responsiveLayout/responsiveLayout.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: Scaffold(
      backgroundColor: Colors.white,
      drawer: ResponsiveLayout.isSmallScreen(context)
          ? Drawer(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60),
          
                children: <Widget>[
                  NavigationBar(),
                ],
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: AnimatedPadding(
          duration: Duration(seconds: 1),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
          child: ResponsiveLayout(
            largeScreen: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                NavigationBar(),
                SizedBox(
                  height: 100,
                ),
                CourseDetails(
                  aligment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

