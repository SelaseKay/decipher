import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.hint,
    this.onChanged,
    this.iconColor = const Color(0xFF0E336A)
  });

  final String hint;
  final Color iconColor;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: TextFormField(
        onChanged: onChanged,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: const Color(0xFF292929),
              fontWeight: FontWeight.normal,
            ),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: const BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 22.0,
              end: 8.0,
            ),
            child: Icon(
              Icons.search,
              color: iconColor,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: const Color(0xFF4A4A4A),
                fontWeight: FontWeight.normal,
              ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 4.0,
          ),
        ),
      ),
    );
  }
}
