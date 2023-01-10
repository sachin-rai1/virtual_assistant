import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shopping_tab_controller.dart';

class ShoppingTabView extends GetView<ShoppingTabController> {
  const ShoppingTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(
          'ShoppingTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
