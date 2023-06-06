import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.hint,
    required this.assetPath,
    this.obscureText = false,
  });

  final String hint;
  final String assetPath;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white,
        ),
        obscureText: obscureText,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 22.0,
              end: 18.0,
            ),
            child: SvgPicture.asset(
              assetPath,
            ),
          ),
          fillColor: const Color(0xFF5F5F5F),
          filled: true,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0xFFB8B8B8),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
        ),
      ),
    );
  }
}
