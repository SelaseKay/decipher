import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  const CustomTab({
    super.key,
    required this.controller,
    this.selectedColor = const Color(0xFF0E336A),
    this.unselectedColor = const Color(0xFFD9D9D9),
    this.tabText1 = "Overview",
    this.tabText2 = "Skills",
    this.tabText3 = "Tools",
  });

  final PageController controller;
  final Color selectedColor;
  final Color unselectedColor;
  final String tabText1;
  final String tabText2;
  final String tabText3;

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  bool _isSelected1 = true;
  bool _isSelected2 = false;
  bool _isSelected3 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isSelected1
                      ? widget.selectedColor
                      : widget.unselectedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  widget.controller.jumpToPage(0);
                  setState(() {
                    _isSelected1 = true;
                    _isSelected2 = false;
                    _isSelected3 = false;
                  });
                },
                child: Text(
                  widget.tabText1,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: _isSelected1 ? Colors.white : Colors.black,
                      ),
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isSelected2
                      ? widget.selectedColor
                      : widget.unselectedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  widget.controller.jumpToPage(1);
                  setState(() {
                    _isSelected1 = false;
                    _isSelected2 = true;
                    _isSelected3 = false;
                  });
                },
                child: Text(
                  widget.tabText2,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: _isSelected2 ? Colors.white : Colors.black,
                      ),
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isSelected3
                      ? widget.selectedColor
                      : widget.unselectedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  widget.controller.jumpToPage(2);
                  setState(() {
                    _isSelected1 = false;
                    _isSelected2 = false;
                    _isSelected3 = true;
                  });
                },
                child: Text(
                  widget.tabText3,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: _isSelected3 ? Colors.white : Colors.black,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
