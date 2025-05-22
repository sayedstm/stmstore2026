import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  const CustomButtonLang({
    super.key,
    required this.textbutton,
    required this.onPressed,
  });
  final String textbutton;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(textbutton),
      ),
      //   child: Text(
    );
  }
}