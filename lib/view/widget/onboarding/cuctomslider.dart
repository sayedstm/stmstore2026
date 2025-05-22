import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:stmstore2026/controller/onboarding/onboarding_controller.dart';
import 'package:stmstore2026/core/constant/color.dart';
import 'package:stmstore2026/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onpagechanged(val); // Handle page change logic here
      },
      itemCount: onBoardingList.length,
      itemBuilder:
          (context, i) => Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: Text(
                  onBoardingList[i].title!,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              const SizedBox(height: 80),
              Image.asset(onBoardingList[i].image!),
              const SizedBox(height: 80),
              Text(
                onBoardingList[i].body!,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),

      // Replace with your list length
      // itemCount: onBoardingList.length,
      // itemBuilder: (context, index) {
      //   return OnBoardingItem(

      // controller: pageController,
    );
  }
}
