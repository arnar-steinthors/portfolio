import 'package:flutter/material.dart';

class HoveringImage extends StatefulWidget {
  @override
  _HoveringImageState createState() => _HoveringImageState();
}

class _HoveringImageState extends State<HoveringImage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3))..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 250,
      width: 250,
      child: Stack(
        children: [
          Image.asset('assets/images/person_illustration.png'),
          SlideTransition(
            position: _animation,
            child: Image.asset('assets/images/phone_illustration.png',),
          ),
        ]
      ),
    );
  }
}
