import 'package:decipher/dummy_data.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({
    super.key,
    required this.onChanged,
  });

  final Function(String) onChanged;

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String dropdownValue = internshipRegions.first;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Sort by Region",
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Container(
          height: 32.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.expand_more),
            elevation: 16,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
            underline: const SizedBox.shrink(),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              widget.onChanged(value!);
              setState(() {
                dropdownValue = value;
              });
            },
            items:
                internshipRegions.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
