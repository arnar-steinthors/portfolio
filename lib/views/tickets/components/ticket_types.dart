import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/views/tickets/controllers/tickets_controller.dart';

class TicketTypes extends StatefulWidget {
  @override
  _TicketTypesState createState() => _TicketTypesState();
}

class _TicketTypesState extends State<TicketTypes> {
  final TicketsController _controller = Get.put(TicketsController());
  final double _iconSize = 35;
  final double _textSize = 16;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(top: 30),
      child: Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: _singleFareCard(context), flex: 1),
          Expanded(child: _periodCard(context), flex: 1),
        ],
      )),
    );
  }

  Widget _singleFareCard(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: _controller.singleSelected ? theme.primaryColor : theme.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft:  Radius.circular(15),
          ),
        ),
      ),
      onPressed: () => _controller.ticketType = TicketType.single,
      child: Container(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: Column(
          children: [
            _singleFareIcon(),
            SizedBox(height: 5),
            _singleFareText(context),
          ],
        ),
      ),
    );
  }

  Widget _periodCard(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: _controller.periodSelected ? theme.primaryColor : theme.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight:  Radius.circular(15),
          ),
        ),
      ),
      onPressed: () => _controller.ticketType = TicketType.period,
      child: Container(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: Column(
          children: [
            _periodIcon(),
            SizedBox(height: 5),
            _periodText(context),
          ],
        ),
      ),
    );
  }

  Widget _periodIcon() {
    return RotationTransition(
      turns: AlwaysStoppedAnimation(320/360),
      child: Icon(
        Icons.date_range,
        size: _iconSize,
      ),
    );
  }

  Widget _periodText(BuildContext context) {
    return FittedBox(
      child: Text(
        S.of(context).timePeriod,
        style: TextStyle(
          fontSize: _textSize,
        ),
      ),
    );
  }

  Widget _singleFareIcon() {
    return RotationTransition(
      turns: AlwaysStoppedAnimation(40/360),
      child: Icon(
        Icons.confirmation_number,
        size: _iconSize,
      ),
    );
  }

  Widget _singleFareText(BuildContext context) {
    return FittedBox(
      child: Text(
        S.of(context).singleFare,
        style: TextStyle(
            fontSize: _textSize
        ),
      ),
    );
  }
}
