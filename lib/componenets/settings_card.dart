import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.prefix,
    this.postfixWidget,
    this.postfixIcon = Icons.arrow_forward_ios,
    this.onPressed,
    required this.text,
  });

  final IconData prefix;
  final IconData postfixIcon;
  final Widget? postfixWidget;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              prefix,
              color: Colors.black,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: const Color(0xFf212121),
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
            postfixWidget ??
                Icon(
                  postfixIcon,
                  color: const Color(0xFF697B7A),
                  size: 10.0,
                ),
          ],
        ),
      ),
    );
  }
}
