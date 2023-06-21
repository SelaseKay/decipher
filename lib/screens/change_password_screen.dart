import 'package:decipher/componenets/labeled_textfield.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Change Password",
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
      body: Column(
        children: [
          const SizedBox(
            height: 24.0,
          ),
          const LabeledTextField(label: "Current Password"),
          const SizedBox(
            height: 24.0,
          ),
          const LabeledTextField(label: "New Password"),
          const SizedBox(
            height: 24.0,
          ),
          const LabeledTextField(label: "Confirm Password"),
          const SizedBox(
            height: 24.0,
          ),
          const Expanded(child: SizedBox()),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Save New Password",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 24.0,
          )
        ],
      ),
    );
  }
}
