import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingChild extends StatelessWidget {
  const OnBoardingChild({
    super.key,
    required this.imageHeight,
    required this.title,
    required this.description,
    required this.assetPath,
  });

  final double imageHeight;
  final String title;
  final String description;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          assetPath,
          height: imageHeight,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 28.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
        ),
        const SizedBox(
          height: 28.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 18.0,
                ),
          ),
        ),
      ],
    );
  }
}
