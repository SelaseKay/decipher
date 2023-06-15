import 'package:decipher/componenets/career_path_item.dart';
import 'package:decipher/componenets/category_item.dart';
import 'package:decipher/componenets/search_text_field.dart';
import 'package:decipher/screens/career_paths_explore_screenn.dart';
import 'package:decipher/screens/career_paths_screen.dart';
import 'package:decipher/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final categoryItemSize = (screenWidth - 24) / 3;

    return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          const SizedBox(
            height: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back,",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontSize: 24.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                "Jennifer!",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const SearchTextField(
            hint: "Search",
          ),
          const SizedBox(
            height: 16.0,
          ),
          SizedBox(
            height: 124.0,
            width: double.infinity,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
              child: Stack(
                children: [
                  //image placeholder
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      color: Colors.grey,
                    ),
                    child: Image.asset(
                      "assets/images/welcome_img.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xFF413F3F).withOpacity(0.62),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Welcome to Communication Design...",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            "Category",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          SizedBox(
            height: categoryItemSize,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryItem(
                  size: categoryItemSize,
                  color: const Color(0xFF6C63FF),
                  onTap: () {},
                  text: "Majors",
                ),
                const SizedBox(
                  width: 14.0,
                ),
                CategoryItem(
                  size: categoryItemSize,
                  color: const Color(0xFFF9A826),
                  onTap: () {},
                  text: "Internship",
                ),
                const SizedBox(
                  width: 14.0,
                ),
                CategoryItem(
                  size: categoryItemSize,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CareerPathsScreen(),
                      ),
                    );
                  },
                  color: const Color(0xFF00BFA6),
                  text: "Career Path",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Career paths",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.normal, color: Colors.black),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CareerPathsExploreScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/arrow_right_icon.svg",
                      height: 12.0,
                      width: 12.0,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Explore all",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 12.0,
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: CareerPathItem(
                title: "Graphic Design",
                assetPath: "assets/images/career_path_img1.png",
                description:
                    "Graphic design is a craft where professionals create visual content to communicate messages.",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CareerPathsScreen(),
                    ),
                  );
                },
              )),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: CareerPathItem(
                title: "Web Design",
                assetPath: "assets/images/career_path_img2.png",
                description:
                    "Graphic design is a craft where professionals create visual content to communicate messages.",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CareerPathsScreen(),
                    ),
                  );
                },
              )),
            ],
          )
        ],
      );
  }
}
