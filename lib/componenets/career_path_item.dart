import 'package:flutter/material.dart';

class CareerPathItem extends StatelessWidget {
  const CareerPathItem({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        children: [
          SizedBox(
            height: 82.0,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
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
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 8.0,
                      ),
                ),
                const SizedBox(height: 4.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
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
                          const SizedBox(width: 8.0,),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
