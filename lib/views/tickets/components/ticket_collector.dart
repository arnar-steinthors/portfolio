import 'package:flutter/material.dart';

class TicketCollector extends StatefulWidget {
  @override
  _TicketCollectorState createState() => _TicketCollectorState();
}

class _TicketCollectorState extends State<TicketCollector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          _adultTicketCollector(),
          Divider(),
          _youngAdultTicketCollector(),
          Divider(),
          _childrenTicketCollector(),
          Divider(),
          _seniorTicketCollector(),
        ],
      ),
    );
  }

  Widget _adultTicketCollector() {
    return Container(
      child: Text("hello"),
    );
  }

  Widget _youngAdultTicketCollector() {
    return Container(
      child: Text("hello"),
    );
  }

  Widget _childrenTicketCollector() {
    return Container(
      child: Text("hello"),
    );
  }

  Widget _seniorTicketCollector() {
    return Container(
      child: Text("hello"),
    );
  }
}
