import 'package:get/get.dart';
import 'package:portfolio/views/tickets/tickets.dart';

class HomePageController extends GetxController {

  void navigateToTickets() => Get.to(() => Tickets());
}