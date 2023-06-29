import 'package:flutter/material.dart';

class CompanyContainer extends StatefulWidget {
 const  CompanyContainer({
    super.key,
    required this.text,
    required this.isShortListed,
    required this.onShortlist,
  });

  final String text;
  final bool isShortListed;
  final void Function() onShortlist;

  @override
  State<CompanyContainer> createState() => _CompanyContainerState();
}

class _CompanyContainerState extends State<CompanyContainer> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.text,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.onShortlist();
                  });
                },
                icon: widget.isShortListed
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.favorite_outline,
                        color: Color(
                          0xFF212121,
                        ),
                      ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 2.0,
        ),
        const Divider(
          height: 1.0,
          color: Color(
            0xFF696969,
          ),
        )
      ],
    );
  }
}
