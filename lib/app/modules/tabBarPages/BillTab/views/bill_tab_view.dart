import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bill_tab_controller.dart';

class BillTabView extends GetView<BillTabController> {
  const BillTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'BillTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
