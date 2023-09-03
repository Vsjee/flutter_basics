import 'package:flutter/material.dart';

import 'custom_styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
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
