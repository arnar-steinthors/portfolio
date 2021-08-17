import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(child: Text('primary'), width: 400, height: 400,),
              Container(child: Text('secondary'), width: 400, height: 400,),
              Container(child: Text('background'), width: 400, height: 400,),
              Container(child: Text('surface'), width: 400, height: 400,),
              Container(child: Text('error'), width: 400, height: 400,),
            ],
          ),
        ),
      ),
    );
  }

}