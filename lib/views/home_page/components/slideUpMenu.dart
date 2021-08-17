import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/views/home_page/controllers/home_page_controller.dart';
import 'package:portfolio/views/home_page/controllers/menuController.dart';

class SlideUpMenu extends StatefulWidget {
  @override
  _SlideUpMenuState createState() => _SlideUpMenuState();
}

class _SlideUpMenuState extends State<SlideUpMenu> {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: GestureDetector(
        child: Icon(Icons.menu),
        onTap: () => _showBottomSheet(context),
      )
    );
  }

  void _showBottomSheet(BuildContext context) {
      showModalBottomSheet<void>(
          context: context,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              )
          ),
          builder: (BuildContext sheetContext) {
            return Container(
              height: 200,
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _themeTile()
                ],
              ),
            );
          });
  }

  Widget _themeTile() {
    return SwitchListTile(
      title: Text(_controller.themeString),
      secondary: Icon(_controller.themeIcon),
      onChanged: (_) => _controller.changeTheme(),
      value: _controller.darkTheme.value,
    );
  }
}