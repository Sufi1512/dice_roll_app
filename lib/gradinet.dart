import 'package:dice_roll/dice_roller.dart';
import 'package:dice_roll/text.dart';
import 'package:flutter/material.dart ';

var startAlingnment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientColor extends StatelessWidget {
  const GradientColor(
    this.color1,
    this.color2, {
    super.key,
  });
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlingnment,
            end: endAlignment),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}


// class GradientColor extends StatelessWidget {
//    GradientColor({super.key, required this.colors});
//  final List<Color> colors;
  

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: colors, begin: startAlingnment, end: endAlignment),
//       ),
//       child: const Center(child: StyleText()),
//     );
//   }
// }
