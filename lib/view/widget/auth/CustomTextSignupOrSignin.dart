import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stmstore2026/core/constant/routes.dart';

class CustomTextSignupOrSignin extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function()? onPressedone;

  const CustomTextSignupOrSignin({super.key, required this.textone, required this.texttwo, this.onPressedone});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        TextButton(
          onPressed: onPressedone,
          child:  Text(texttwo, style: const TextStyle(
            color: Colors.blue,
             fontSize: 18
          )),
        ),
      ],
    );
  }
}
