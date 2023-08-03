import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About us",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.black,
              ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color(0xFFECF4FF),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        children: [
          const SizedBox(
            height: 40.0,
          ),
          _AboutUsContainer(title: "Version", description: "2.23"),
          const SizedBox(
            height: 31.0,
          ),
          _AboutUsContainer(
            title: "Description",
            description: '''Decipher is an app for commuication
design students of kwame Nkrumah
University of Science and Technology.
It is a mobile companion of the department
website. It’s main objective is to bring functions of the 
department website to a mobile device with 
detailed information.''',
          ),
          const SizedBox(
            height: 31.0,
          ),
          _AboutUsContainer(
            title: "Developer",
            description: '''CHADES - Students of Kwame Nkrumah University of 
Science and Technology.
Department of Communication Design.''',
          ),
          const SizedBox(
            height: 31.0,
          ),
        ],
      ),
    );
  }
}

class _AboutUsContainer extends StatelessWidget {
  const _AboutUsContainer({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
              ),
        ),
      ],
    );
  }
}
