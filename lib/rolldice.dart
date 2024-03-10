import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int activeDice = 1;
  void rollDice() {
    setState(() {
      activeDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rolling Dice App',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 105, 27, 208),
                Color.fromARGB(255, 205, 54, 244),
                Color.fromARGB(255, 105, 27, 208),
              ]),
        ),
        child: Image.asset(
          'images/dice-$activeDice.png',
          width: 200,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Roll Dice'),
        onPressed: () => rollDice(),
        backgroundColor: Colors.teal,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          side: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ),
        splashColor: const Color.fromARGB(255, 205, 54, 244),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
