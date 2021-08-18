import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
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
              Text(S().lightMode),
              Text(S().darkMode),
              Text(S().languages),
              Text(S.of(context).languages),
              Text(S.of(context).darkMode),
              Text(S.current.darkMode),
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