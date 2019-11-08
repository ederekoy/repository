import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_web/widgets/centered_view/centered_view.dart';
import 'package:the_web/widgets/nav_drawer/navdrawer.dart';
import 'package:the_web/widgets/navigation_bar/navigation_bar.dart';
import 'aboutDesktop.dart';
import 'aboutMobile.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: AboutContentMobile(),
                  desktop: AboutContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
