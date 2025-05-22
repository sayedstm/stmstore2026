import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stmstore2026/core/constant/color.dart';
import 'package:stmstore2026/core/constant/routes.dart';
import 'package:stmstore2026/view/widget/auth/customformauth.dart';
import 'package:stmstore2026/view/widget/auth/custombuttonauth.dart';
import 'package:stmstore2026/view/widget/auth/customtextbodyauth.dart';
import 'package:stmstore2026/view/widget/auth/customtexttitleauth.dart';
import 'package:stmstore2026/controller/auth/login_controller.dart';
import 'package:stmstore2026/view/widget/auth/logoauth.dart';
import 'package:stmstore2026/view/widget/auth/CustomTextSignupOrSignin.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
   LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,        
        title: Text(
          'sign in',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: AppColor.backgroungColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(color: AppColor.backgroungColor),
        child: ListView(
          children: [
            const LogoAuth(),
            CustomTextTitleAuth(title: 'Welcome Back'),
            const SizedBox(height: 35),
            CustomTextBodyAuth(
              title:
                  'sign in with your Email ang Password OR social media account',
            ),
            const SizedBox(height: 40),
            CustomFormauth(label: 'Email', hint: 'enter your Email', icon: Icons.email, controller: controller.email ),
            const SizedBox(height: 25),
            CustomFormauth(label: ' Password', hint: 'enter your password', icon: Icons.password, controller: controller.password),
            InkWell(
              onTap: () {
                controller.gotoforgetpassword();
              },
              child: Text(
                'Forget Password?',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 25),
            custombuttonauth(
              text: 'Sign In',
              onPressed: () {
                // Add your sign-in logic here
              },
            ),

            CustomTextSignupOrSignin(textone: 'Dont have an account', texttwo: 'sign up',onPressedone: () {
            controller. signup(); 
            },),
          ],
        ),
      ),
    );
  }
}
