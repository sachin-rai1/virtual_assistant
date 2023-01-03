import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';
import 'package:virtual_assistant/app/modules/RegisterUser/views/register_user_view.dart';

import '../../../../data/Constants.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: h * 0.15),
                  child: Text(
                    'Logo',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: h * 0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: w * 0.35, bottom: 10),
                        child: Text(
                          "Login to Your Account",
                          style: TextStyle(
                              fontSize: 24,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      MyTextField(
                        height: h * 0.06,
                        obSecure: false,
                        borderRadius: 10,
                        hint: "Email",
                      ),
                      MyTextField(
                        height: h * 0.06,
                        obSecure: true,
                        borderRadius: 10,
                        hint: "Password",
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.01),
                        child: MyButton(
                          onTap: () {},
                          label: "Sign In",
                          height: h * 0.05,
                          width: w * 0.95,
                          fontColor: Colors.white,
                          circularInt: 10,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an Account ? ",
                              style: TextStyle(
                                fontSize: 16,
                                color: secondaryColor,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => RegisterUserView());
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          // color: Colors.green,
          height: h * 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "- Or Sign in With - ",
                style: TextStyle(color: secondaryColor, fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: h * 0.07,
                          width: w * 0.25,
                          child: Image.asset("assets/icons/google.png"))),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: h * 0.07,
                          width: w * 0.25,
                          child: Image.asset("assets/icons/facebook.png"))),
                  InkWell(
                      onTap: () {},
                      child: Container(
                          height: h * 0.07,
                          width: w * 0.25,
                          child: Image.asset("assets/icons/twitter.png"))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}