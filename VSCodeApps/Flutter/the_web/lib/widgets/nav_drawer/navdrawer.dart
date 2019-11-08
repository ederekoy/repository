import 'package:flutter/material.dart';
import 'package:the_web/views/about/aboutView.dart';
import 'package:the_web/views/home/homeView.dart';
import 'dart:html' as html;
import 'drawerHeader.dart';
import 'drawerItem.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(
            'Home',
            Icons.home,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeView()),
              );
            },
          ),
          DrawerItem('About', Icons.person, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutView()),
            );
          }),
          DrawerItem('Instagram', Icons.face, () {
            html.window.location.href = "https://www.instagram.com/emrobar/";
          }),
        ],
      ),
    );
  }
}
