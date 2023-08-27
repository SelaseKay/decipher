import 'package:decipher/string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight / 2.6;
    return Scaffold(
      appBar: AppBar(
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
        padding: const EdgeInsets.only(
          bottom: 16.0,
        ),
        children: [
          SizedBox(
            height: imageHeight,
            width: double.infinity,
            child: Image.asset(
              "assets/images/welcome_screen_img.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Text(
              "Welcome to Communication Design",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  welcomeDescription,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(
                  height: 8.0,
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.labelSmall,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "Visit the department website for more information ",
                      ),
                      TextSpan(
                          text: 'https://decode.knust.edu.gh',
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Colors.blue
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              await launchUrl(
                                  Uri.parse('https://decode.knust.edu.gh'));
                            }),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
