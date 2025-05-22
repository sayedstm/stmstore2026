import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:stmstore2026/core/constant/routes.dart';

abstract class signupController extends GetxController {
  void signup();
  void login();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;
}

class SignupControllerImp extends signupController {
  

  @override
  void signup() {
    Get.offNamed(AppRoutes.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.onClose();
  }
  
  @override
  void login() {
    Get.offNamed(AppRoutes.login);
  }
}
