import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'package:stmstore2026/core/localization/changelocal.dart';
import 'package:stmstore2026/core/localization/translation.dart';
import 'package:stmstore2026/core/services/services.dart';
import 'package:stmstore2026/routes.dart';
import 'package:stmstore2026/test.dart';
import 'package:stmstore2026/view/screen/auth/login.dart';
import 'package:stmstore2026/view/screen/auth/signup.dart';
import 'package:stmstore2026/view/screen/language.dart';
import 'package:stmstore2026/view/screen/onboarding.dart';
import 'package:stmstore2026/core/localization/local_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     LocalController Controller = Get.put(LocalController());
    return GetMaterialApp(
      locale: Controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dem',
      theme: ThemeData( 
        textTheme: TextTheme(
         headlineLarge: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 29, 9, 3),
          ),
          headlineMedium: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          headlineSmall: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyLarge: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          bodyMedium: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),  
        ),
        fontFamily: 'Cairo', 
        primarySwatch:  Colors.blue),      
      home: Language(),
      routes: routes,
      // routes: {}, // Uncomment and define your routes here if needed
    );
  }
}

