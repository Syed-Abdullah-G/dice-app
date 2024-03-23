import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll =
          randomizer.nextInt(6) + 1; // to get a number between 0 and 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 26)),
            onPressed: rollDice,
            child: const Text('Roll Dice')),
      ],
    );
  }
}
