import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stmstore2026/core/services/services.dart';

class LocalController extends GetxController{
  Locale? language;
  MyServices myServices = Get.find();

   void changeLanguage(String langCode) {
    myServices.sharedPreferences.setString('lang', langCode);
    language = Locale(langCode);
    Get.updateLocale(language!);
    update();
   
  }
  @override
  void onInit() {
    String? sharedpreflang = myServices.sharedPreferences.getString('lang');
    if (sharedpreflang == 'ar') {
      language = const Locale('ar');
    } else if (sharedpreflang == 'en') {
      language = const Locale('en');
    } else {
      language =  Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
    
    
  }
  
}