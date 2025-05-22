import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:stmstore2026/core/constant/routes.dart';

abstract class Forgetpassword extends GetxController {
  void checkemail();
  void gotovrifycode();
  
  
}
class ForgetpasswordControllerImp extends Forgetpassword {
  late TextEditingController email;

  @override
  void checkemail() {
    // TODO: implement checkemail
  }

  @override
  void gotovrifycode() {
    Get.offNamed(AppRoutes.verifycode);
  }
  
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    super.onClose();
  }
}
  