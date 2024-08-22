import 'package:first_app/roll_dice.dart';
import 'package:flutter/material.dart';

var beginAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

//Second Approach.
class GradientContainer extends StatelessWidget {
  // GradientContainer(key): super(key: key);
  const GradientContainer({super.key, required this.colors});

  //We can create multiple constructors.
  const GradientContainer.natural({super.key})
      : colors = const [
          Color.fromARGB(255, 47, 4, 84),
          Color.fromARGB(255, 79, 5, 132)
        ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}

//First Approach.
// class GradientContainer extends StatelessWidget {
//   // GradientContainer(key): super(key: key);
//   const GradientContainer(this.color1, this.color2, {super.key});
//   final Color color1;
//   final Color color2;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [color1, color2],
//           begin: beginAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: CustomTextWidget('Hello world'),
//       ),
//     );
//   }
// }
