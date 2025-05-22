import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:stmstore2026/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  void login();
  void signup();
  void gotoforgetpassword();
  late TextEditingController email;
  late TextEditingController password;
  
}
class LoginControllerImp extends LoginController {
  @override
  void login() {
   
  }

  @override
  void signup() {
    Get.offNamed(AppRoutes.signup);
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }
  
  
  
  @override
  void gotoforgetpassword() {
    Get.offNamed(AppRoutes.forgetpassword);
  }
}