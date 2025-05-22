import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:stmstore2026/controller/onboarding/onboarding_controller.dart';
import 'package:stmstore2026/data/datasource/static/static.dart';

class CustomDotsController extends StatelessWidget {
  const CustomDotsController({
    Key? key,
    required int length,
    required PageController controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          onBoardingList.length,
          (index) => Container(
            margin: const EdgeInsets.only(right: 5),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: controller.currentPage == index
                  ? Colors.black
                  : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
