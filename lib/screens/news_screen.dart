import 'package:decipher/componenets/news_item_container.dart';
import 'package:decipher/dummy_data.dart';
import 'package:decipher/screens/news_feed_details_screen.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight / 2.6;

    return Column(
      children: [
        SizedBox(
          height: imageHeight,
          width: double.infinity,
          child: Image.asset(
            "assets/images/news_img.png",
            fit: BoxFit.cover,
            height: imageHeight,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            "KNUST wins Gold Award at the\nInternational Packaging Design Student\nCompetition 2022 by WPO",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child:  Divider(
            height: 0.5,
            color:  Color(0xFF5F5F5F),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Today",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: const Color(0xFF5F5F5F),
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: newsItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                bottom: 8.0,
              ),
              child: NewsItemContainer(
                assetPath: newsItems[index].img,
                title: newsItems[index].title,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsFeedDetailsScreen(
                              newsId: index,
                            )),
                  );
                },
              ),
            );
          },
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
        ))
      ],
    );
  }
}
