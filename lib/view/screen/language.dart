import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:stmstore2026/core/constant/routes.dart';
import 'package:stmstore2026/core/localization/changelocal.dart';
import 'package:stmstore2026/view/widget/language/custombuttonlang.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'.tr),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'choose'.tr,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            CustomButtonLang(
              textbutton: 'Arabic'.tr,
              onPressed: () {
                controller.changeLanguage('ar');
                Get.toNamed(AppRoutes.onboading);
                // Navigate to the login screen
              },
            ),
            CustomButtonLang(
              textbutton: 'English'.tr,
              onPressed: () {
                controller.changeLanguage('en');
                Get.toNamed(AppRoutes.onboading);
                // Navigate to the login screen
              },
            ),
          ],
        ),
      ),
    );
  }
}