import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stmstore2026/core/constant/imageassets.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,                
      child: Image.asset(Imageassets.logoimageauth),
      );
  }
}