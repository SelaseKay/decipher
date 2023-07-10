import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });
  final String title;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 24.0,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(11.0)),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 42.0,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
          )
        ],
      ),
    );
  }
}
