import 'package:get/get.dart';

enum TicketType {
  period,
  single
}

class TicketsController extends GetxController {
  final type = TicketType.single.obs;
  final RxInt adultTickets = 0.obs;
  final RxInt youngAdultTickets = 0.obs;
  final RxInt childrenTickets = 0.obs;
  final RxInt seniorTickets = 0.obs;
  final int adultPrice = 790;
  final int youngAdultPrice = 390;
  final int childrenPrice = 0;
  final int seniorPrice = 0;

  /// return true if the [TicketType] is [single]
  bool get singleSelected => type.value == TicketType.single;

  /// return the reverse of [singleSelected]
  bool get periodSelected => !singleSelected;

  /// set a new ticket type
  set ticketType(TicketType selectedType) => type.value = selectedType;
}