import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/animations/hovering_image.dart';
import 'package:portfolio/generated/l10n.dart';

class PageHeader extends StatefulWidget {
  @override
  _PageHeaderState createState() => _PageHeaderState();
}

class _PageHeaderState extends State<PageHeader> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Container(
      child: Column(
        children: [
          HoveringImage(),
          _imageText(),
          _imageSubText(),
        ],
      ),
    );
  }

  Widget _imageText() {
    return Text(
        S().iMake,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      );
  }

  Widget _imageSubText() {
    TextStyle style = TextStyle(fontSize: 25);
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(S().notifications, textStyle: style),
        TyperAnimatedText(S().userExperience, textStyle: style),
        TyperAnimatedText(S().design, textStyle: style),
        TyperAnimatedText(S().userInterface, textStyle: style),
        TyperAnimatedText(S().apps, textStyle: style),
      ],
    );
  }
}