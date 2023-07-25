import 'package:decipher/dummy_data.dart';
import 'package:flutter/material.dart';

class NewsFeedDetailsScreen extends StatelessWidget {
  const NewsFeedDetailsScreen({
    super.key,
    required this.newsId,
  });

  final int newsId;

  @override
  Widget build(BuildContext context) {
    final imageHeight = MediaQuery.of(context).size.height / 2.6;
    final bodyHeight = MediaQuery.of(context).size.height / 1.5;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Image.asset(
            newsItems[newsId].img,
            fit: BoxFit.cover,
            width: double.infinity,
            height: imageHeight,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: bodyHeight,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
              child: ListView(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                  bottom: 16.0,
                ),
                children: [
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    newsItems[newsId].title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Divider(
                    height: 0.2,
                    color: Color(0xFF353535),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.schedule,
                        size: 16.0,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        newsItems[newsId].date,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Divider(
                    height: 0.2,
                    color: Color(0xFF353535),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    newsItems[newsId].details,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14.0
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
