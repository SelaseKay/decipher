import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({
    super.key,
    required this.totalCorrectAnswers,
    required this.totalQuestions,
  });

  final int totalQuestions;
  final int totalCorrectAnswers;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(92.0))),
          child: CircularPercentIndicator(
            radius: 92.0,
            fillColor: const Color(0xFF038271),
            backgroundColor: const Color(0xFF02594E),
            circularStrokeCap: CircularStrokeCap.round,
            center: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: "$totalCorrectAnswers",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 65.0,
                        ),
                  ),
                  TextSpan(
                    text: "/$totalQuestions",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 34.0,
                        ),
                  ),
                  TextSpan(
                    text: "\nYour Score",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: const Color(0xFFECF4FF),
                          fontWeight: FontWeight.normal,
                          fontSize: 22.0,
                        ),
                  )
                ],
              ),
            ),
            progressColor: const Color(0xFF00BFA6),
            backgroundWidth: 8.0,
            lineWidth: 8.0,
            percent: 0.55,
          ),
        ),
      ],
    );
  }
}
