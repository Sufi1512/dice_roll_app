import 'package:flutter/material.dart';
import 'package:dice_roll/gradinet.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currenDiceRoll = Random().nextInt(6) + 1;
  //this below is one of the way to doing this
  // var activeDiceImage = 'asset/dice-images/dice-1.png';
  void rolldice() {
    currenDiceRoll = Random().nextInt(6) + 1;
    //var diceRoll = Random().nextInt(6) +1; // if we pass 6 it will genrate number 0 to 5 so we're adding 1 in this now it'll gen 1 to 6
    setState(() {
      //activeDiceImage = 'asset/dice-images/$diceRoll-5.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asset/dice-images/dice-$currenDiceRoll.png',
          width: 200,
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        OutlinedButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
              padding: EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            child: const Text(
              'roll',
              // style: TextStyle(
              //     fontStyle: FontStyle.italic, color: Colors.yellow),
            ))
      ],
    );
  }
}
