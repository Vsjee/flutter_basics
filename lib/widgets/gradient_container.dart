import 'package:flutter/material.dart';

import 'custom_styled_text.dart';

const List<Color> linearGradientColors = [
  Color.fromARGB(255, 33, 0, 90),
  Color.fromARGB(255, 81, 0, 158),
];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: linearGradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomStyledText(
              "I am a custom text, I'm from other planet and i want to play "),
          CustomStyledText('cs2 rigth now'),
          Icon(
            Icons.heart_broken,
            color: Colors.green,
            size: 40.0,
          ),
        ],
      ),
    );
  }
}
