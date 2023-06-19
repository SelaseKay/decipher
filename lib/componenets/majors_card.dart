import 'package:flutter/material.dart';

class MajorsCard extends StatelessWidget {
  const MajorsCard({
    super.key,
    required this.color,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  final Color color;
  final String title;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final buttonWidth = width / 3.2;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          SizedBox(
            width: buttonWidth,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFECF4FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              onPressed: onPressed,
              child: Text(
                "Open",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
