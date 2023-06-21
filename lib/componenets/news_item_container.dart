import 'package:flutter/material.dart';

class NewsItemContainer extends StatelessWidget {
  const NewsItemContainer({
    super.key,
    required this.assetPath,
    required this.title,
    required this.onTap,
  });

  final String assetPath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 72.0,
            width: 88.0,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
            child: Image.asset(assetPath),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Text(
            title,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
          ),
        ],
      ),
    );
  }
}
