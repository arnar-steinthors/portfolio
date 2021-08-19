import 'package:flutter/material.dart';
import 'package:portfolio/shared_components/slide_up_menu.dart';
import 'package:portfolio/views/tickets/components/ticket_collector.dart';
import 'package:portfolio/views/tickets/components/ticket_types.dart';

class Tickets extends StatefulWidget {
  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [SlideUpMenu()],
      ),
      body: Container(
        margin: EdgeInsets.only(right: 12, left: 12),
        width: double.infinity,
        child: Column(
          children: [
            TicketTypes(),
            TicketCollector(),
          ],
        ),
      ),
    );
  }
}
