import 'package:decipher/componenets/auth_button.dart';
import 'package:decipher/componenets/auth_text_fields.dart';
import 'package:decipher/componenets/custom_rich_text.dart';
import 'package:decipher/componenets/third_party_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          children: [
            const SizedBox(
              height: 130.0,
            ),
            SvgPicture.asset(
              "assets/images/logo.svg",
              height: 80.0,
              width: 80.0,
            ),
            Text(
              "Welcome",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Text(
              "Sign-up to Continue!",
              style: Theme.of(context).textTheme.titleLarge,
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
              onPressed: () {},
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
                    color: const Color(0xFF5F5F5F),
                  ),
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  "or",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: const Color(0xFF696969),
                      ),
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Expanded(
                  child: Container(
                    height: 1.0,
                    color: const Color(0xFF5F5F5F),
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
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
