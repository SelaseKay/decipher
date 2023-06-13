import 'package:decipher/componenets/auth_button.dart';
import 'package:decipher/componenets/auth_text_fields.dart';
import 'package:decipher/componenets/custom_rich_text.dart';
import 'package:decipher/componenets/third_party_auth_button.dart';
import 'package:decipher/screens/home_screen.dart';
import 'package:decipher/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          children: [
            const SizedBox(
              height: 130.0,
            ),
            SvgPicture.asset(
              "assets/images/brand_icon.svg",
              height: 80.0,
              width: 80.0,
            ),
            Text(
              "Welcome",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Sign-up to Continue!",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32.0,
            ),
            const AuthTextField(
              hint: "Username",
              assetPath: "assets/images/username_icon.svg",
            ),
            const SizedBox(
              height: 20.0,
            ),
            const AuthTextField(
              hint: "Email",
              assetPath: "assets/images/email_icon.svg",
            ),
            const SizedBox(
              height: 20.0,
            ),
            const AuthTextField(
              hint: "Password",
              assetPath: "assets/images/key_icon.svg",
              obscureText: true,
            ),
            const SizedBox(
              height: 54.0,
            ),
            AuthButton(
              text: "Sign-up",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    height: 1.0,
                     color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  "or",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Expanded(
                  child: Container(
                    height: 1.0,
                     color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: ThirdPartyAuthButton(
                    onPressed: () {},
                    text: "Facebook",
                    assetPath: "assets/images/facebook_icon.svg",
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: ThirdPartyAuthButton(
                    onPressed: () {},
                    text: "Google",
                    assetPath: "assets/images/google_icon.svg",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomRichText(
                regularText: "Already have an account? ",
                pressableText: "Log in",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
