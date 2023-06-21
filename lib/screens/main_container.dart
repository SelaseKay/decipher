import 'package:decipher/screens/home_screen.dart';
import 'package:decipher/screens/news_screen.dart';
import 'package:decipher/screens/notifications_screen.dart';
import 'package:decipher/screens/profile_screen.dart';
import 'package:decipher/screens/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = const [
    HomeScreen(),
    NewsScreen(),
    TaskScreen(),
    ProfileScreen(),
  ];

  _getAppbarTitle() {
    switch (_selectedIndex) {
      case 0:
        return "Home";
      case 1:
        return "News";
      case 2:
        return "Task";
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFfECF4FF),
      appBar: _selectedIndex == 3
          ? null
          : AppBar(
              centerTitle: true,
              leading: _selectedIndex == 0
                  ? SvgPicture.asset(
                      "assets/images/logo.svg",
                      height: 60.0,
                      width: 60.0,
                    )
                  : IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
              actions: _selectedIndex == 0
                  ? [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationsScreen(),
                            ),
                          );
                        },
                        child: SvgPicture.asset(
                          "assets/images/alarm_icon.svg",
                          height: 24.0,
                          width: 24.0,
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      )
                    ]
                  : null,
              backgroundColor: Theme.of(context).primaryColor,
              title: Text(
                _getAppbarTitle(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFF3F3F3),
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
        selectedItemColor: Theme.of(context).primaryColor,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
