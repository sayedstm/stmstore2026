import 'package:flutter/material.dart';

class CustomFormauth extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;
  final IconData icon;
  final TextEditingController? controller;

  const CustomFormauth({
    super.key,
    required this.label,
    this.obscureText = false,    
    required this.hint,
    required this.icon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 142, 149, 152)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        suffixIcon: Icon(icon),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    );
  }
}
