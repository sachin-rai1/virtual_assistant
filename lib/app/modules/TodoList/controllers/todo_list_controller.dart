import 'package:cell_calendar/cell_calendar.dart';
import 'package:get/get.dart';

class TodoListController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  List<CalendarEvent> sampleEvents(){
    final sampleEvents = [
      CalendarEvent(eventName: "Hey", eventDate: DateTime.now().add(Duration(days: -2)))
    ];
    return sampleEvents;
  }
}
