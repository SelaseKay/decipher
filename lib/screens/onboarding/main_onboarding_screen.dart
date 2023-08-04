import 'package:decipher/componenets/custom_stepper.dart';
import 'package:decipher/screens/onboarding/onboarding_child.dart';
import 'package:decipher/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainOnboardingScreen extends StatefulWidget {
  const MainOnboardingScreen({super.key});

  @override
  State<MainOnboardingScreen> createState() => _MainOnboardingScreenState();
}

class _MainOnboardingScreenState extends State<MainOnboardingScreen> {
  final _controller = PageController();

  int _currentIndex = 0;

  late final SharedPreferences _prefs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getSharedPreferenceInstance();
  }

  _getSharedPreferenceInstance() async{
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight / 3;

    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth / 2.2;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(40.0),
            child: SizedBox(
              width: 50.0,
              child: InkWell(
                onTap: () async {
                  await _prefs.setBool("has_onboarded", true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ),
                  );
                },
                child: Text(
                  "Skip",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: [
                OnBoardingChild(
                  imageHeight: imageHeight,
                  assetPath: "assets/images/onboarding_img1.svg",
                  title: "Options in Communication Design",
                  description:
                      "Dive into detailed descriptions, course requirement, and discover the fields that align with your passion.",
                ),
                OnBoardingChild(
                  imageHeight: imageHeight,
                  assetPath: "assets/images/onboarding_img2.svg",
                  title: "Career Pathways",
                  description:
                      "Navigate your way towards a fulfilling career that aligns with your academic pursuits.",
                ),
                OnBoardingChild(
                  imageHeight: imageHeight,
                  assetPath: "assets/images/onboarding_img3.svg",
                  title: "Test your skills from Quizzes",
                  description:
                      "Take engaging quizzes tailored to your academic strengths, interest, and goals.",
                ),
                OnBoardingChild(
                  imageHeight: imageHeight,
                  assetPath: "assets/images/onboarding_img4.svg",
                  title: "Trends in Designs",
                  description:
                      "Stay up to date with the latest trends and development in the field of design.",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomStepper(currentIndex: _currentIndex),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: buttonWidth,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () async {
                    if (_currentIndex == 3) {
                        await _prefs.setBool("has_onboarded", true);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                      return;
                    }
                    await _controller.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.linear,
                    );
                    setState(() {
                      _currentIndex = _controller.page!.toInt();
                    });
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _currentIndex == 3 ? "Get Started" : "Continue",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Colors.black,
                                  ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 16.0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
