import 'package:flutter/material.dart';

class NewsItemContainer extends StatelessWidget {
  const NewsItemContainer({
    super.key,
    required this.assetPath,
    required this.details,
    required this.author,
    required this.onTap,
  });

  final String assetPath;
  final String details;
  final String author;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
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
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: "$details \n" ,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: const Color(0xFF5F5F5F),
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                ),
                TextSpan(
                  text: "by $author",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: const Color(0xFF5F5F5F),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
