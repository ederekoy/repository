import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final onTap;

  const NavBarItem({
    Key key,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: StadiumBorder(),
      child: InkWell(
        child: Container(
          color: Color.fromARGB(244, 244, 67, 54),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
