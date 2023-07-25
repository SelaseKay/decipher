import 'package:flutter/material.dart';

class EventContainer extends StatelessWidget {
  const EventContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(40.0))),
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 12.0,
                ),
          )
        ],
      ),
    );
  }
}
