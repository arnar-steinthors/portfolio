import 'package:flutter/material.dart';
import 'package:portfolio/animations/hovering_image.dart';

class PageHeader extends StatefulWidget {
  @override
  _PageHeaderState createState() => _PageHeaderState();
}

class _PageHeaderState extends State<PageHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HoveringImage(),
        ],
      ),
    );
  }

}