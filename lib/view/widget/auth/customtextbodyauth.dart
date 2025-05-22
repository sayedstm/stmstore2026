import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String title;
  const CustomTextBodyAuth({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            );
  }
}