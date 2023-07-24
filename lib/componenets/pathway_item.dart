import 'package:flutter/material.dart';

class PathwayItem extends StatelessWidget {
  const PathwayItem({
    super.key,
    required this.size,
    required this.text,
    required this.cardColor,
    required this.assetPath,
    required this.onTap,
  });

  final double size;
  final String text;
  final Color cardColor;
  final String assetPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: cardColor,
            ),
            child: Center(
              child: Image.asset(assetPath),
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
      ),
    );
  }
}
