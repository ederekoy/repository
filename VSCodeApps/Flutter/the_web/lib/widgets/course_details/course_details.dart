import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key, Alignment aligment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'EMRE CAN\nDEREKÖY',
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 70),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "I'm just a man lost in space \nCalling out, hoping to hear something back \nSomething back ",
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
          )
        ],
      ),
    );
  }
}
 