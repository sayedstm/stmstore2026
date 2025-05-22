import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stmstore2026/controller/auth/resetpassword_controller';
import 'package:stmstore2026/core/constant/color.dart';
import 'package:stmstore2026/view/widget/auth/customformauth.dart';
import 'package:stmstore2026/view/widget/auth/custombuttonauth.dart';
import 'package:stmstore2026/view/widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
  ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,        
        title: Text(
          'Reset password',
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
              title: 'check your email',
            ),
            const SizedBox(height: 35),
            
            const SizedBox(height: 25),
            CustomFormauth( label: 'Email', hint: 'enter your Email', icon: Icons.email, controller: controller.email,),
             const SizedBox(height: 25),
            custombuttonauth(
              text: 'check email',
              onPressed: () {
                // Add your sign-in logic here
              },
            ),
          
            
          ],
        ),
      ),
    );
  }

  
}

