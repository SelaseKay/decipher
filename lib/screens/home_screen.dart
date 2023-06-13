import 'package:decipher/componenets/career_path_item.dart';
import 'package:decipher/componenets/category_item.dart';
import 'package:decipher/componenets/search_text_field.dart';
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
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final categoryItemSize = (screenWidth - 24) / 3;

    return Scaffold(
      backgroundColor: const Color(0xFfECF4FF),
      appBar: AppBar(
        centerTitle: true,
        leading: SvgPicture.asset(
          "assets/images/brand_icon.svg",
          height: 60.0,
          width: 60.0,
        ),
        actions: [
          SvgPicture.asset(
            "assets/images/alarm_icon.svg",
            height: 24.0,
            width: 24.0,
          ),
          const SizedBox(
            width: 16.0,
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: ListView(
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
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      color: Colors.grey,
                    ),
                  ),

                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Welcome to Communication Design...",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
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
                  text: "Majors",
                ),
                const SizedBox(
                  width: 14.0,
                ),
                CategoryItem(
                  size: categoryItemSize,
                  text: "Internship",
                ),
                const SizedBox(
                  width: 14.0,
                ),
                CategoryItem(
                  size: categoryItemSize,
                  text: "Quiz",
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: const Color(0xFFB8B8B8),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        onTap: _onItemTapped,
      ),
    );
  }
}
