import 'package:flutter/material.dart';
import 'package:the_web/widgets/responsiveLayout/responsiveLayout.dart';

class Navbar extends StatelessWidget {
  final navLinks = ["Home", "About", "Instagram"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 80,
                width: 150,
                child: Image.asset('assets/logo.png'),
              ),
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem()]..add(InkWell(
                    child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0, 8),
                            blurRadius: 8)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                      child: Text("Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1,
                              fontFamily: "Montserrat-Bold")),
                    ),
                  ),
                ))),
            )
          else
            Image.network("assets/menu.png", width: 26, height: 26)
        ],
      ),
    );
  }
}
