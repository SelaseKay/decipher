import 'package:flutter/material.dart';

class LabeledTextField extends StatefulWidget {
  const LabeledTextField({
    super.key,
    required this.label,
  });

  final String label;

  @override
  State<LabeledTextField> createState() => _LabeledTextFieldState();
}

class _LabeledTextFieldState extends State<LabeledTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: const Color(0xFF212121),
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextFormField(
            keyboardType: TextInputType.text,
            obscureText: !_passwordVisible, //This will obscure text dynamically
            decoration: InputDecoration(
              icon: const Icon(Icons.lock_outline),
              border: InputBorder.none,
              hintText: widget.label,
              // Here is key idea
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xFF4A4A4A),
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
               contentPadding: const EdgeInsets.symmetric(
                vertical: 10.0
            ),
            ),
          ),
        ),
      ],
    );
  }
}
