import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:stmstore2026/controller/onboarding/onboarding_controller.dart';

class CustomBottonOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomBottonOnBoarding({ Key? key, required Null Function() onPressed}) : super(key: key);
    
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        textColor: Colors.white,
        color: const Color(0xFF4CAF50), // Green color
        onPressed: (){
          controller.onNext();
          // Navigate to the next screen or perform any action
          // Get.toNamed(Routes.login);
        },
        child: Text("continue".tr),
        ),
        
        
    );
  }
}