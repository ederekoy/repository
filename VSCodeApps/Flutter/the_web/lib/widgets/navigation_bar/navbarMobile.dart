import 'package:flutter/material.dart';
import 'package:the_web/widgets/navigation_bar/navbarLogo.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          NavBarLogo(),
        ],
      ),
    );
  }
}
