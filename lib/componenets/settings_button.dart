import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
    required this.assetPath,
    required this.text,
    required this.onPressed,
  });

  final String assetPath;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFFE8F1FF),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Color(0xFF4A4A4A))),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              assetPath,
              height: 15.0,
              width: 15.0,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: const Color(0xFF4A4A4A),
                    ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF212121),
              size: 16.0,
            )
          ],
        ),
      ),
    );
  }
}
