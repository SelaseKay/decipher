import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.cardHeight,
    this.imgPath = "",
  });

  final String title;
  final String subTitle;
  final String date;
  final String imgPath;
  final double cardHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 32.0,
                  width: 32.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: Color(0xFFD9D9D9)),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                const Icon(
                  Icons.calendar_today,
                  size: 16.0,
                  color: Color(0xFF4A4A4A),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Text(
                  date,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: const Color(0xFF4A4A4A),
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                )
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: cardHeight,
               clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: const Color(0xFFD9D9D9)),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    color: Color(0xFFD9D9D9)),
                child: imgPath.isNotEmpty
                    ? Image.asset(
                        imgPath,
                        fit: BoxFit.cover,
                      )
                    : SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.schedule,
                              color: Color(0xFF212121),
                              size: 32.0,
                            ),
                            Text(
                              subTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.0,
                                  ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ],
        ),
        Container(
          height: 60.0,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: Color(0xFFECF4FF)),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_forward,
                  size: 16.0,
                  color: Color(0xFF212121),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  "show more",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
