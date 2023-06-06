import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdPartyAuthButton extends StatelessWidget {
  const ThirdPartyAuthButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.assetPath,
  });

  final VoidCallback onPressed;
  final String text;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFFEDEEF0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assetPath,
            height: 32.0,
            width: 32.0,
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: const Color(0xFFAFB2B5),
                  fontSize: 16.0,
                ),
          ),
        ],
      ),
    );
  }
}
