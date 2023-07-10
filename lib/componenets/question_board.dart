import 'package:flutter/material.dart';

class QuestionBoard extends StatelessWidget {
  const QuestionBoard({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: Color(0xFF028B79)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Q.2 /20",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 24.0),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            question,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 24.0,
                ),
          ),
        ],
      ),
    );
  }
}
