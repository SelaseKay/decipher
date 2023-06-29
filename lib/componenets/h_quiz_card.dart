import 'package:flutter/material.dart';

class HQuizCard extends StatelessWidget {
  const HQuizCard({
    super.key,
    required this.color,
    required this.title,
    this.quizCount = 15,
    required this.onPressed,
    required this.assetPath,
  });

  final Color color;
  final String title;
  final int quizCount;
  final VoidCallback onPressed;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width / 2;
    return SizedBox(
      width: cardWidth,
      child: Card(
        color: color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 36.0,
                    width: 36.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    child: Image.asset(assetPath),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w600,
                        ),
                  )
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "$quizCount Quiz",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                child: SizedBox(
                  height: 30.0,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
