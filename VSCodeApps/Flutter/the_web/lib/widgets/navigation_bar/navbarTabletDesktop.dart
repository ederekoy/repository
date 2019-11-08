import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:the_web/views/about/aboutView.dart';
import 'package:the_web/views/home/homeView.dart';

import 'navbarItem.dart';
import 'navbarLogo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem(
                title: 'Home',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
              ),
              SizedBox(
                width: 50,
              ),
              NavBarItem(
                  title: 'About',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutView()),
                    );
                  }),
              SizedBox(
                width: 50,
              ),
              NavBarItem(
                title: 'Instagram',
                onTap: () {
                  html.window.location.href =
                      "https://www.instagram.com/emrobar/";
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
