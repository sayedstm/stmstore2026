import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:stmstore2026/core/constant/routes.dart';
import 'package:stmstore2026/data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  void onNext();
  void onpagechanged( int index);
}


class OnboardingControllerImp extends OnboardingController {
  int currentPage = 0;
  late PageController pageController;
  

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
   
  }

  @override
  void onNext() {
    currentPage++;
    if (currentPage >= onBoardingList.length) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }
  }

  @override
  void onpagechanged(int index) {
    currentPage = index;
    update();
  }
}