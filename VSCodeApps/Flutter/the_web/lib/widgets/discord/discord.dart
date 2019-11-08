import 'package:flutter/material.dart';
import 'dart:html' as html;

class Discord extends StatelessWidget {
  const Discord({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          html.window.location.href = "https://discord.gg/NmZx2nN";
        },
        child: Text(
          "Join Voila!",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        color: Color.fromARGB(244, 244, 67, 57),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: StadiumBorder(),
      ),
    );
  }
}
