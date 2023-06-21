import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    this.bgColor = Colors.white,
    required this.title,
    required this.time,
  });

  final Color bgColor;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      color: bgColor,
      child: Row(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                color: Color(0xFF5A5757)),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      color: const Color(0xFF092724),
                    ),
              ),
              const SizedBox(height: 2.0,),
               Text(
                time,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 10.0,
                      color: const Color(0xFF697B7A),
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
