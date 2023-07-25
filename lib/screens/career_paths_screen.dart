import 'package:decipher/componenets/industry_players_item.dart';
import 'package:decipher/componenets/pathway_item.dart';
import 'package:decipher/componenets/search_text_field.dart';
import 'package:decipher/dummy_data.dart';
import 'package:decipher/screens/career_paths_explore_screenn.dart';
import 'package:flutter/material.dart';

class CareerPathsScreen extends StatelessWidget {
  const CareerPathsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final pathwayItemSize = (screenWidth - 24) / 3;

    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Career paths",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 32.0,
          vertical: 32.0,
        ),
        children: [
          const SearchTextField(hint: "Search Career"),
          const SizedBox(
            height: 32.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/trending_img.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trending",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF212121),
                            ),
                      ),
                      Text(
                        "UI/UX Designer",
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: const Color(0xFFF9A826),
                            ),
                      ),
                      
                    ],
                  )
                ]),
                const SizedBox(height: 4.0,),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CaroselItem(isActive: true,),
                      SizedBox(width: 7.0,),
                      CaroselItem(),
                      SizedBox(width: 7.0,),
                      CaroselItem(),
                      SizedBox(width: 7.0,),CaroselItem(),
                      SizedBox(width: 7.0,)
                    ],
                  )
              ],
            ),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Text(
            "Career Pathway",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: Colors.black,
                ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: pathwayItemSize + 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PathwayItem(
                  size: pathwayItemSize,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CareerPathsExploreScreen(
                          careerType: CareerType.visualComm,
                        ),
                      ),
                    );
                  },
                  text: "Visual communication",
                  assetPath: "assets/images/pathway_img1.png",
                  cardColor: const Color(0xFF6C63FF),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                PathwayItem(
                  size: pathwayItemSize,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CareerPathsExploreScreen(
                          careerType: CareerType.adsAndMedia,
                        ),
                      ),
                    );
                  },
                  text: "Advertising",
                  assetPath: "assets/images/pathway_img2.png",
                  cardColor: const Color(0xFFF9A826),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                PathwayItem(
                  size: pathwayItemSize,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CareerPathsExploreScreen(
                          careerType: CareerType.creativeMultimedia,
                        ),
                      ),
                    );
                  },
                  text: "Multimedia",
                  assetPath: "assets/images/pathway_img3.png",
                  cardColor: const Color(0xFF00BFA6),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32.0,
          ),
          Text(
            "Top Industry Players",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: Colors.black,
                ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 140.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                IndustryPlayersItem(
                  text: "@Artdemigod",
                  assetPath: "assets/images/industry_player1.png",
                ),
                SizedBox(
                  width: 16.0,
                ),
                IndustryPlayersItem(
                  text: "@Datartgod",
                  assetPath: "assets/images/industry_player2.png",
                ),
                SizedBox(
                  width: 16.0,
                ),
                IndustryPlayersItem(
                  text: "@Elcarna",
                  assetPath: "assets/images/industry_player3.png",
                ),
                SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
          Text(
            "Visit their social media platforms to know more about them  and other creatives in the notable industries.",
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontSize: 10.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
          ),
          const SizedBox(
            height: 42.0,
          ),
        ],
      ),
    );
  }
}


class CaroselItem extends StatelessWidget {
  const CaroselItem({
    super.key,
     this.isActive = false,
  });


  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.0,
      width: 14.0,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF0E336A)),
          color:
              isActive ? const Color(0xFF0E336A) : Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(7.0),
          )),
    );
  }
}
