import 'package:flutter/material.dart';

class custombuttonauth extends StatelessWidget {
  final String text;
  final Function() onPressed;
  
  const custombuttonauth({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black) ),
    );
  }
}
