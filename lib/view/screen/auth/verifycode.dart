import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stmstore2026/controller/auth/verifycode_controller';
import 'package:stmstore2026/core/constant/color.dart';
import 'package:stmstore2026/view/widget/auth/custombuttonauth.dart';
import 'package:stmstore2026/view/widget/auth/customtexttitleauth.dart';

// TODO: Replace this with your actual implementation or import the correct file.


class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
 VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
  return Scaffold(
    appBar: AppBar(
        centerTitle: true,        
        title: Text(
          'verify code',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: AppColor.backgroungColor,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(color: AppColor.backgroungColor),
        child: ListView(
          children: [          
            CustomTextTitleAuth(
              title: 'check code',
            ),
            const SizedBox(height: 35),
            
            const SizedBox(height: 25),
            OtpTextField(
        fieldWidth: 50,
        borderRadius: BorderRadius.circular(10),
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),
             const SizedBox(height: 25),
            custombuttonauth(
              text: 'check email',
              onPressed: () {
                // Add your sign-in logic here
              },
            ),
          
            
          ],
        ),
      ),
    );
  }

  
}
