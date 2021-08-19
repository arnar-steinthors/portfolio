import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/animations/hovering_image.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/views/home_page/controllers/home_page_controller.dart';

class PageHeader extends StatefulWidget {
  @override
  _PageHeaderState createState() => _PageHeaderState();
}

class _PageHeaderState extends State<PageHeader> {
  final HomePageController _controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    // print("build");
    // print(L10nService().locale);
    // print(S.of(context).languages);
    // print(S().languages);
    return Container(
      child: Column(
        children: [
          HoveringImage(),
          _imageText(context),
          _imageSubText(context),
          _toBuyTicketButton(context), // todo: this isn't part of the header
        ],
      ),
    );
  }

  Widget _imageText(BuildContext context) {
    return Text(
        S.of(context).iMake,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      );
  }

  Widget _imageSubText(BuildContext context) {
    TextStyle style = TextStyle(fontSize: 25);
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(S.of(context).notifications, textStyle: style),
        TyperAnimatedText(S.of(context).userExperience, textStyle: style),
        TyperAnimatedText(S.of(context).design, textStyle: style),
        TyperAnimatedText(S.of(context).userInterface, textStyle: style),
        TyperAnimatedText(S.of(context).apps, textStyle: style),
      ],
    );
  }

  Widget _toBuyTicketButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _controller.navigateToTickets(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ticket copy"),
            Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}