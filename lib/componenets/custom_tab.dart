import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  const CustomTab({super.key, required this.controller,});

  final PageController controller;

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
                      ? Theme.of(context).primaryColor
                      : const Color(0xFFD9D9D9),
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
                  "Overview",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: _isSelected1 ? Colors.white : Colors.black,
                      ),
                ),
              ),
            ),
            const SizedBox(width: 16.0,),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isSelected2
                      ? Theme.of(context).primaryColor
                      : const Color(0xFFD9D9D9),
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
                  "Skills",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: _isSelected2 ? Colors.white : Colors.black,
                      ),
                ),
              ),
            ),
              const SizedBox(width: 16.0,),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isSelected3
                      ? Theme.of(context).primaryColor
                      : const Color(0xFFD9D9D9),
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
                  "Tools",
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
