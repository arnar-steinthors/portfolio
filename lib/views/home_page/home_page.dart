import 'package:flutter/material.dart';
import 'package:portfolio/views/home_page/components/slideUpMenu.dart';

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
          child: Column(
            children: [

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }

}