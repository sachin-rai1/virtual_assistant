import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../TodoList/controllers/todo_list_controller.dart';
import '../controllers/show_events_controller.dart';

class ShowEventsView extends GetView<ShowEventsController> {
   ShowEventsView({Key? key}) : super(key: key);

  TodoListController todoListController = Get.find();

  @override
  Widget build(BuildContext context) {
    Get.put(TodoListController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShowEventsView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child:Column(
        )
      ),

    );
  }
}
