import 'package:flutter/material.dart';

class MemberContainer extends StatelessWidget {
  const MemberContainer({
    super.key,
    required this.assetPath,
    required this.description,
  });

  final String assetPath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 12.0,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
        )
      ],
    );
  }
}
