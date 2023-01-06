import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';

import '../controllers/todo_list_controller.dart';

class TodoListView extends GetView<TodoListController> {
  const TodoListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarAction: [Container(
        height: 10,
        padding: const EdgeInsets.only(right: 10, top: 5),
        child: Image.asset(
          'assets/icons/calendar.png',
        ),
      ),],
      appBarTitle: Text("Todo List"),
    );
  }
}
