import 'package:flutter/material.dart';

class CustomStyledText extends StatelessWidget {
  const CustomStyledText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "I am a custom text, I'm from other planet and i want to play cs2 rigth now",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
