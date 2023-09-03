import 'package:flutter/material.dart';

import 'custom_styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 'assets/images/dice-images/dice-1.png';

  void rollDice() {
    setState(() {
      currentDiceImage = 'assets/images/dice-images/dice-2.png';
    });
  }

  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.rotate(
          angle: 90,
          child: Image.asset(
            currentDiceImage,
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
