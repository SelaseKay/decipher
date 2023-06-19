import 'package:decipher/componenets/majors_card.dart';
import 'package:decipher/screens/majors_overview_screen.dart';
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MajorsOverviewScreen(
                      majorId: 0,
                      tabButtonColor: const Color(0xFF6C63FF),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            MajorsCard(
              color: const Color(0xFFF9A826),
              title: "Creative Multimedia",
              description:
                  "This course combines artistic and technical skills to create interactive and engaging multimedia content for various platforms.",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MajorsOverviewScreen(
                      majorId: 1,
                      tabButtonColor: const Color(0xFFF9A826),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            MajorsCard(
              color: const Color(0xFF00BFA6),
              title: "Visual Communication",
              description:
                  "This course explores techniques of conveying information visually through various media and design elements.",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MajorsOverviewScreen(
                      majorId: 2,
                      tabButtonColor: const Color(0xFF00BFA6),
                    ),
                  ),
                );
              },
            ),
          ]),
    );
  }
}
