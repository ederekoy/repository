import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_web/widgets/call_to_action/callToActionMobile.dart';
import 'package:the_web/widgets/call_to_action/callToActionTabletDesktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      desktop: CallToActionTabletDesktop(title),
    );
  }
}
