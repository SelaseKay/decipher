import 'package:decipher/componenets/majors_card.dart';
import 'package:flutter/material.dart';

class MajorsScreen extends StatelessWidget {
  const MajorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Majors",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 16.0,
          ),
          children: [
            const SizedBox(
              height: 40.0,
            ),
            MajorsCard(
              color: const Color(0xFF6C63FF),
              title: "Advertising  and Media",
              description:
                  "Focuses on developing Creative skills and strategies for designing effective advertisements.",
              onPressed: () {},
            ),
             const SizedBox(
              height: 20.0,
            ),
            MajorsCard(
              color: const Color(0xFFF9A826),
              title: "Creative Multimedia",
              description:
                  "This course combines artistic and technical skills to create interactive and engaging multimedia content for various platforms.",
              onPressed: () {},
            ),
             const SizedBox(
              height: 20.0,
            ),
            MajorsCard(
              color: const Color(0xFF00BFA6),
              title: "Visual Communication",
              description:
                  "This course explores techniques of conveying information visually through various media and design elements.",
              onPressed: () {},
            ),
          ]),
    );
  }
}
