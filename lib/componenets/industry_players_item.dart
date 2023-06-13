import 'package:flutter/material.dart';

class IndustryPlayersItem extends StatelessWidget {
  const IndustryPlayersItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
            color: Theme.of(context).cardColor,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
