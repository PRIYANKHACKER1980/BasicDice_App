import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('Assets/Images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll Dice'),
        ),
        // Image.asset('Assets/Images/dice-2.png'),
        // Image.asset('Assets/Images/dice-3.png'),
        //Image.asset('Assets/Images/dice-4.png'),
        // Image.asset('Assets/Images/dice-5.png'),
        // Image.asset('Assets/Images/dice-6.png')
      ],
    );
  }
}
