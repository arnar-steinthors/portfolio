import 'package:flutter/material.dart';
import 'package:portfolio/views/home_page/components/page_header.dart';
import '../../shared_components/slide_up_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.extension),
        actions: [SlideUpMenu()],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(right: 12, left: 12),
            width: double.infinity,
            child: Column(
              children: [
                PageHeader()
              ],
            ),
          ),
        ),
      ),
    );
  }

}