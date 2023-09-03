import 'package:flutter/material.dart';

import 'custom_styled_text.dart';

const linearGradientColors = [
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
          CustomStyledText(),
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
