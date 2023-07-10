import 'package:flutter/material.dart';

class QuestionProgressIndicator extends StatelessWidget {
  const QuestionProgressIndicator({
    super.key,
    required this.currentQNumber,
    required this.totalQuestions,
  });

  final int currentQNumber;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    double progress =
        currentQNumber / totalQuestions * MediaQuery.of(context).size.width - 32;
    return Stack(
      children: [
        Container(
          height: 20.0,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
            color: Colors.black,
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 20.0,
          width: progress,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
            color: Color(0xFF00BFA6),
          ),
        )
      ],
    );
  }
}
