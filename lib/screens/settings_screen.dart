import 'package:decipher/componenets/settings_card.dart';
import 'package:decipher/screens/change_password_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool _switchValue1 = false;
  bool _switchValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.black,
              ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 8.0),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 16.0,
          ),
          style: IconButton.styleFrom(
            foregroundColor: const Color(0xFFECF4FF),
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              side: BorderSide(
                color: const Color(0xFFB9B9B9).withOpacity(0.6),
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: [
          const SizedBox(
            height: 20.0,
          ),
          SettingsCard(
            prefix: Icons.lock_outline,
            text: "Change password",
            onPressed: () {
               Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChangePasswordScreen(),
                      ),
                    );
            },
          ),
          const SizedBox(
            height: 32.0,
          ),
          const SettingsCard(
            prefix: Icons.person_outline,
            text: "About",
          ),
          const SizedBox(
            height: 32.0,
          ),
          const SettingsCard(
            prefix: Icons.verified_user_outlined,
            text: "Privacy & Policy",
          ),
          const SizedBox(
            height: 44.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Text(
              "Notification",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: const Color(0xFF092724),
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          SettingsCard(
            prefix: Icons.notifications_outlined,
            text: "App Notification",
            postfixWidget: Switch(
              value: _switchValue1,
              onChanged: (value) {
                setState(() {
                  _switchValue1 = value;
                });
              },
            ),
          ),
           const SizedBox(
            height: 16.0,
          ),
          SettingsCard(
            prefix: Icons.dark_mode_outlined,
            text: "Dark Mode",
            postfixWidget: Switch(
              value: _switchValue2,
              onChanged: (value) {
                setState(() {
                  _switchValue2 = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
