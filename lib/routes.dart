import 'package:flutter/widgets.dart';
import 'package:stmstore2026/core/constant/routes.dart';
import 'package:stmstore2026/view/screen/auth/forgetpassword.dart';
import 'package:stmstore2026/view/screen/auth/login.dart';
import 'package:stmstore2026/view/screen/auth/resetpassword.dart';
import 'package:stmstore2026/view/screen/auth/verifycode.dart';
import 'package:stmstore2026/view/screen/language.dart';
import 'package:stmstore2026/view/screen/onboarding.dart';
import 'package:stmstore2026/view/screen/auth/signup.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onboading: (context) => const OnBoarding(),
  AppRoutes.language: (context) => const Language(),
  AppRoutes.signup: (context) => const Signup(),
  AppRoutes.forgetpassword: (context) => const ForgetPassword(),
  AppRoutes.verifycode: (context) => const VerifyCode(),
  AppRoutes.resetpassword: (context) => const ResetPassword(),
  };