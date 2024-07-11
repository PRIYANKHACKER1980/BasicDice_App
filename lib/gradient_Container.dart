import 'package:dice_app/dice_rollor.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class gradient_Container extends StatelessWidget {
  const gradient_Container(this.color1, this.color2, {super.key});
  //initialization work

  const gradient_Container.purple({super.key})
      : color1 = Colors.deepPurpleAccent,
        color2 = Colors.white12;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}



// class gradient_Container extends StatelessWidget {
//   const gradient_Container({super.key, required this.colors});
//   // initialization work
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         )),
//         child: const Center(child: Styled_text('Hello World')));
//   }
// }
