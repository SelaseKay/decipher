import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RecentQuizzesCard extends StatelessWidget {
  const RecentQuizzesCard({
    super.key,
    required this.color,
    required this.title,
    required this.assetPath,
  });

  final Color color;
  final String title;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              child: Image.asset(assetPath),
            ),
            const SizedBox(
              width: 11.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: const Color(0xFFECF4FF),
                          fontWeight: FontWeight.w600,
                          fontSize: 11.0,
                        ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Completed",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: const Color(0xFFECF4FF),
                          fontWeight: FontWeight.normal,
                          fontSize: 10.0,
                        ),
                  ),
                ],
              ),
            ),
            CircularPercentIndicator(
              radius: 31.0,
              center: Text("55%", style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20.0
              ),),
              progressColor: Colors.white,
              backgroundWidth: 5.0,
              percent: 0.55,
            )
          ],
        ),
      ),
    );
  }
}
