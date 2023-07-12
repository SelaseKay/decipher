import 'package:flutter/material.dart';

class QuestionProgressIndicator extends StatelessWidget {
  const QuestionProgressIndicator({
    super.key,
    required this.currentQNumber,
    required this.totalQuestions,
    required this.width,
    required this.progressIndicatorWidth,
  });

  final int currentQNumber;
  final int totalQuestions;
  final double width;
  final double progressIndicatorWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 20.0,
            width: width,
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
            width: (currentQNumber / totalQuestions) * width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(32.0),
              ),
              color: Color(0xFF00BFA6),
            ),
          )
        ],
      ),
    );
  }
}
