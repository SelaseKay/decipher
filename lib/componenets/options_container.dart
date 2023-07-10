import 'package:flutter/material.dart';

class OptionsContainer extends StatelessWidget {
  const OptionsContainer({
    super.key,
    required this.color,
    required this.index,
    this.selectedOptionIndex = -1,
    required this.onTap,
    required this.text,
  });

  final Color color;
  final String text;
  final int index;
  final int selectedOptionIndex;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        color: color,
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2.0),
                height: 17.0,
                width: 17.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      9.0,
                    ),
                  ),
                ),
                child: index == selectedOptionIndex
                    ? Container(
                        height: 13.0,
                        width: 13.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              9.0,
                            ),
                          ),
                          color: Colors.white,
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              const SizedBox(
                width: 13.0,
              ),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
