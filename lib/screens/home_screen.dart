import 'package:decipher/componenets/career_path_item.dart';
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
    return Scaffold(
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
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                "Jennifer!",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          SizedBox(
            height: 40.0,
            child: TextFormField(
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: const Color(0xFF292929),
                    fontWeight: FontWeight.normal,
                  ),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                prefixIcon: const Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 22.0,
                      end: 8.0,
                    ),
                    child: Icon(Icons.search)),
                fillColor: const Color(0xFFD9D9D9),
                filled: true,
                hintText: "Search",
                hintStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: const Color(0xFF4A4A4A),
                      fontWeight: FontWeight.normal,
                    ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 4.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Row(
            children: [
              Expanded(
                  child: CareerPathItem(
                title: "Graphic Design",
                description:
                    "Graphic design is a craft where professionals create visual content to communicate messages.",
              )),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: CareerPathItem(
                title: "Web Design",
                description:
                    "Graphic design is a craft where professionals create visual content to communicate messages.",
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
