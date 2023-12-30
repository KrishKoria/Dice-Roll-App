import 'package:dice_roll/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 96, 239, 255),
            Color.fromARGB(255, 0, 255, 136),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const StyledText(),
    );
  }
}