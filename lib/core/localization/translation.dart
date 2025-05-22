import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello',
          'welcome': 'Welcome to our app',
          'login': 'Login',
          'signup': 'Sign Up',
          'email': 'Email',
          'password': 'Password',
          'forgot_password': 'Forgot Password?',
          'remember_me': 'Remember Me',
          'submit': 'Submit',
          'choose': 'choose Language',
          'Arabic': 'Arabic',
          'English': 'English',
          'Language': 'Language',
          'continue': 'Continue',
        },
        'ar': {
          'hello': 'مرحبا',
          'welcome': 'مرحبًا بك في تطبيقنا',
          'login': 'تسجيل الدخول',
          'signup': 'إنشاء حساب',
          'email': 'البريد الإلكتروني',
          'password': 'كلمة المرور',
          'forgot_password': 'هل نسيت كلمة المرور؟',
          'remember_me': 'تذكرني',
          'submit': 'إرسال',
          'choose': 'أختر اللغة',
          'Arabic': 'العربية',
          'English': 'الإنجليزية',
          'Language': 'اللغة',
          'continue': 'استمر',
        },
  };
  
} 