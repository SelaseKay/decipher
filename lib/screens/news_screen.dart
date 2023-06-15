import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight / 2.6;

    return Column(
      children: [
        SizedBox(
          height: imageHeight,
          width: double.infinity,
          child: Image.asset(
            "assets/images/news_img.png",
            fit: BoxFit.cover,
            height: imageHeight,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            "Borem ipsum dolor sit amet, consectetur adipiscing elit.Borem ipsum dolor sit ",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Today",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: const Color(0xFF5F5F5F),
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Expanded(child: ListView())
      ],
    );
  }
}
