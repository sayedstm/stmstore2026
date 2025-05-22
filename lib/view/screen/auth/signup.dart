import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stmstore2026/core/constant/color.dart';
import 'package:stmstore2026/core/constant/routes.dart';
import 'package:stmstore2026/view/widget/auth/CustomTextSignupOrSignin.dart';
import 'package:stmstore2026/view/widget/auth/customformauth.dart';
import 'package:stmstore2026/view/widget/auth/custombuttonauth.dart';
import 'package:stmstore2026/view/widget/auth/customtextbodyauth.dart';
import 'package:stmstore2026/view/widget/auth/customtexttitleauth.dart';
import 'package:stmstore2026/view/widget/auth/logoauth.dart';
import 'package:stmstore2026/controller/auth/signup_controller.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
   SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,        
        title: Text(
          'sign up',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: AppColor.backgroungColor,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(color: AppColor.backgroungColor),
        child: ListView(
          children: [          
            CustomTextTitleAuth(
              title: 'Welcome Back',
            ),
            const SizedBox(height: 35),
            CustomTextBodyAuth(title: 'sign in with your Email ang Password OR social media account',),
            const SizedBox(height: 40),
            CustomFormauth( label: 'Username', hint: 'enter your Username', icon: Icons.person, controller: controller.username,),
            const SizedBox(height: 25),
            CustomFormauth( label: 'Email', hint: 'enter your Email', icon: Icons.email, controller: controller.email,),
            const SizedBox(height: 25),
            CustomFormauth(label: 'Phone', hint: 'enter your Phone', icon: Icons.phone, controller: controller.phone,),
            const SizedBox(height: 25),
            CustomFormauth(label: 'Password', hint: 'enter your passwo', icon: Icons.password, controller: controller.password,),
            const SizedBox(height: 25),
            custombuttonauth(
              text: 'Sign up',
              onPressed: () {
                // Add your sign-in logic here
              },
            ),
          
            CustomTextSignupOrSignin(textone: ' have an account', texttwo: 'sign in',onPressedone: () {
           controller.login();}) 
          ],
        ),
      ),
    );
  }

  
}
