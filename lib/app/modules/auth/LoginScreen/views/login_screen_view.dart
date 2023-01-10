import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/widgets.dart';
import 'package:virtual_assistant/app/modules/RegisterUser/views/register_user_view.dart';
import 'package:virtual_assistant/app/modules/home/views/home_view.dart';
import '../../../../data/constants.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      borderRadius: 10,
                      hint: "Email",
                    ),
                    SizedBox(height: h * 0.01,),
                    MyTextField(
                      height: h * 0.06,
                      obSecure: true,
                      borderRadius: 10,
                      hint: "Password",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.01),
                      child: MyButton(
                        onTap: () {
                          Get.to(() => HomeView());
                        },
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
        height: h * 0.15,
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
          ],
        ),
      ),
    );
  }
}
