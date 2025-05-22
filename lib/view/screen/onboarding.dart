import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:stmstore2026/controller/onboarding/onboarding_controller.dart';
import 'package:stmstore2026/core/constant/color.dart';
import 'package:stmstore2026/data/datasource/static/static.dart';
import 'package:stmstore2026/view/widget/onboarding/cuctomslider.dart';
import 'package:stmstore2026/view/widget/onboarding/custombutton.dart';
import 'package:stmstore2026/view/widget/onboarding/dotscontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      body:         
          SafeArea(child:
           Column(
             children: [
               Expanded(
                flex: 4,
                child: CustomSliderOnBoarding()                                                                                                          ),
          Expanded(
        flex: 1,
        child: Column(
          children: [
            const SizedBox(height: 20),
          CustomDotsController(
            length: onBoardingList.length,    
            controller: PageController(),
          ),
          const SizedBox(height: 20),
          // Add your button here
          CustomBottonOnBoarding(
            onPressed: () {  
             /// Navigate to the login screen                     
            },
          ),            
          ],             
             ),        
      ), 
            ] ),             
            ),                         
    );    
  }
}

