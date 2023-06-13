import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: TextFormField(
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: const Color(0xFF292929),
              fontWeight: FontWeight.normal,
            ),
        cursorColor: Colors.grey,
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
          prefixIcon: const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 22.0,
                end: 8.0,
              ),
              child: Icon(Icons.search)),
          fillColor: const Color(0xFFD9D9D9),
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
