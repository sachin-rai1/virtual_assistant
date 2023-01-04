import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:virtual_assistant/app/modules/auth/LoginScreen/views/login_screen_view.dart';

import '../../../data/Constants.dart';
import '../../../data/Widgets.dart';
import '../controllers/register_user_controller.dart';

class RegisterUserView extends GetView<RegisterUserController> {
  const RegisterUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                Text(
                  'Logo',
                  style: TextStyle(fontSize: 50),
                ),
                SizedBox(
                  height: h * 0.1,
                ),
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
                MyTextField(
                  height: h * 0.06,
                  obSecure: true,
                  borderRadius: 10,
                  hint: "Confirm Password",
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
                        "Already have an Account ? ",
                        style: TextStyle(
                          fontSize: 16,
                          color: secondaryColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => LoginScreenView());
                        },
                        child: Text(
                          "Sign In",
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
        ),
        bottomNavigationBar: Container(
          height: h * 0.25,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: h * 0.03),
                child: Text(
                  "- Or Sign in With - ",
                  style: TextStyle(color: secondaryColor, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Container(
                            height: h * 0.1,
                            width: w * 0.25,
                            child: Image.asset("assets/icons/google.png"))),
                    InkWell(
                        onTap: () {},
                        child: Container(
                            height: h * 0.1,
                            width: w * 0.25,
                            child: Image.asset("assets/icons/facebook.png"))),
                    InkWell(
                        onTap: () {},
                        child: Container(
                            height: h * 0.1,
                            width: w * 0.25,
                            child: Image.asset("assets/icons/twitter.png"))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
