import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_web/widgets/navigation_bar/navbarTabletDesktop.dart';
import 'navbarMobile.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarTabletDesktop(),
    );
  }
}
