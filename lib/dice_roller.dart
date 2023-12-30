import 'dart:math';
import 'package:dice_roll/styled_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// class _DiceRollerState extends State<DiceRoller> {
//   var currentDiceFace = 6;
//   void rollDice() {
//     setState(() {
//       currentDiceFace = Random().nextInt(6) + 1;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$currentDiceFace.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 64,
              vertical: 16,
            ),
          ),
          child: const StyledText("Roll Dice"),
        ),
      ],
    );
  }
}
