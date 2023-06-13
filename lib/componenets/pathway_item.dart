import 'package:flutter/material.dart';

class PathwayItem extends StatelessWidget {
  const PathwayItem({
    super.key,
    required this.size,
    required this.text,
  });

  final double size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
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
