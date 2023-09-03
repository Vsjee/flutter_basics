import 'dart:math';

import 'package:flutter/material.dart';

import 'custom_styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int score = 0;
  int currentFirstDiceRoll = 1;
  int currentSecondDiceRoll = 1;
  double currentFirstDiceAngle = 0;
  double currentSecondDiceAngle = 0;

  void rollDice() {
    setState(() {
      currentFirstDiceRoll = randomizer.nextInt(6) + 1;
      currentSecondDiceRoll = randomizer.nextInt(6) + 1;
      currentFirstDiceAngle = randomizer.nextInt(360) + 1;
      currentSecondDiceAngle = randomizer.nextInt(360) + 1;
      score = currentFirstDiceRoll + currentSecondDiceRoll;
    });
  }

  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomStyledText(score.toString()),
        const SizedBox(
          height: 18,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.rotate(
              angle: currentFirstDiceAngle,
              child: Image.asset(
                'assets/images/dice-images/dice-$currentFirstDiceRoll.png',
                width: 130,
              ),
            ),
            Transform.rotate(
              angle: currentSecondDiceAngle,
              child: Image.asset(
                'assets/images/dice-images/dice-$currentSecondDiceRoll.png',
                width: 130,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        TextButton(onPressed: rollDice, child: const CustomStyledText('Roll '))
      ],
    );
  }
}
