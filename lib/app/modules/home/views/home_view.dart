import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/widgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('HomeView'),
              centerTitle: true,
            ),
            body: Center(
              child: Text(
                'HomeView is working',
                style: TextStyle(fontSize: 20),
              ),
            ),
            bottomNavigationBar: MyBottomNavigation(),

        ),
    );
  }
}
