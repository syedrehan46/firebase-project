import 'package:flutter/material.dart';

class Signupbutton extends StatelessWidget {
  final VoidCallback onPressed;

  const Signupbutton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      child: Text(
        "Sign Up",
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
