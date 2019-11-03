import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:the_web/views/about/aboutView.dart';
import 'package:the_web/views/home/homeView.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavButton(
                text: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
              ),
              SizedBox(
                width: 40,
              ),
              NavButton(
                color: Colors.redAccent,
                text: "About",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutView()),
                  );
                },
              ),
              SizedBox(
                width: 40,
              ),
              NavButton(
                  /* 
                color: Color.fromARGB(244, 244, 67, 54), */
                  onPressed: () {
                    html.window.location.href =
                        "https://www.instagram.com/emrobar/";
                  },
                  text: "Instagram"),
            ],
          )
        ],
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.redAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      shape: StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      onPressed: onPressed,
      highlightedBorderColor: Colors.redAccent,
    );
  }
}
