import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  bool _isButton1Selected = true;
  bool _isButton2Selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: _isButton1Selected
                    ? Colors.white
                    : Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                widget.controller.jumpToPage(0);
                setState(() {
                  _isButton1Selected = true;
                  _isButton2Selected = false;
                });
              },
              child: Text(
                "List of companies",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: _isButton1Selected
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                    ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: _isButton2Selected
                    ? Colors.white
                    : Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                 widget.controller.jumpToPage(1);
                setState(() {
                  _isButton1Selected = false;
                  _isButton2Selected = true;
                });
              },
              child: Text(
                "Favorite",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: _isButton2Selected
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
