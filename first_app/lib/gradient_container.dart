import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignmet = Alignment.topLeft;
const endAlignmet = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.purple({super.key})
      : firstColor = Colors.deepPurple,
        secondColor = Colors.indigo;

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secondColor,
          ],
          begin: startAlignmet,
          end: endAlignmet,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
