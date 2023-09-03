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
  var currentDiceRoll = 1;

  void rollDice() {
    int firstRandomNumber = randomizer.nextInt(6) + 1;

    setState(() {
      currentDiceRoll = firstRandomNumber;
    });
  }

  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.rotate(
          angle: 150,
          child: Image.asset(
            'assets/images/dice-images/dice-$currentDiceRoll.png',
            width: 180,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        TextButton(
            onPressed: rollDice, child: const CustomStyledText('Roll Dice'))
      ],
    );
  }
}
