import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';

import '../controllers/expenses_controller.dart';

class ExpensesView extends GetView<ExpensesController> {
  const ExpensesView({Key? key}) : super(key: key);
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
      appBarTitle: Text("Expenses"),
    );
  }
}
