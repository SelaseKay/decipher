import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CareerPathItem extends StatelessWidget {
  const CareerPathItem({
    super.key,
    required this.title,
    required this.description,
    required this.onTap,
    required this.assetPath,
  });

  final String title;
  final String description;
  final VoidCallback onTap;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 82.0,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Image.asset(
                    assetPath,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 4.0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  child: Text(
                    "career path",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Flexible(
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontSize: 8.0,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: onTap,
                        child: Row(
                          children: [
                            Text(
                              "Read more",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 10.0,
                                  ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            SvgPicture.asset(
                              "assets/images/arrow_right_icon.svg",
                              height: 12.0,
                              width: 12.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
