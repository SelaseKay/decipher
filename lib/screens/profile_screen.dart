import 'package:decipher/componenets/settings_button.dart';
import 'package:decipher/componenets/settings_button_container.dart';
import 'package:decipher/screens/majors_screen.dart';
import 'package:decipher/screens/meet_team_screen.dart';
import 'package:decipher/screens/quiz_home_screen.dart';
import 'package:decipher/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAFCFF),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        children: [
          const SizedBox(
            height: 48.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Color(0xFFE8F1FF),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/profile_icon.svg",
                  width: 80.0,
                  height: 100.0,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jennifer",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontSize: 24.0,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "@Jenneyqh",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontSize: 16.0,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          SettingsButtonsContainer(
            title: "Content",
            children: [
              SettingsButton(
                  assetPath: "assets/images/content_icon.svg",
                  text: "Content",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MajorsScreen(),
                      ),
                    );
                  }),
              const SizedBox(
                height: 8.0,
              ),
              SettingsButton(
                  assetPath: "assets/images/quizzes_icon.svg",
                  text: "Quizzes",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizzesHomeScreen(),
                      ),
                    );
                  }),
              const SizedBox(
                height: 8.0,
              ),
              SettingsButton(
                  assetPath: "assets/images/meet_team_icon.svg",
                  text: "Meet the Team",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MeetTeamScreen(),
                      ),
                    );
                  }),
            ],
          ),
          const SizedBox(
            height: 24.0,
          ),
          SettingsButtonsContainer(
            title: "Preference",
            children: [
              SettingsButton(
                  assetPath: "assets/images/settings_icon.svg",
                  text: "Settings",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsScreen(),
                      ),
                    );
                  }),
              const SizedBox(
                height: 8.0,
              ),
              SettingsButton(
                  assetPath: "assets/images/feedback_icon.svg",
                  text: "Feedback",
                  onPressed: () {}),
              const SizedBox(
                height: 8.0,
              ),
              SettingsButton(
                  assetPath: "assets/images/logout_icon.svg",
                  text: "Log Out",
                  onPressed: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0))),
                        backgroundColor: Theme.of(context).primaryColor,
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 64.0,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.logout_outlined,
                                    size: 30.0,
                                    color: Color(0xFFD9D9D9),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "Are you sure you want to logout?",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 64.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                  color:
                                                      const Color(0xFF212121),
                                                ),
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "Logout",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                  color:
                                                      const Color(0xFF212121),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  }),
            ],
          )
        ],
      ),
    );
  }
}
