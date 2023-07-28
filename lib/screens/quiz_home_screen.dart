import 'package:decipher/componenets/h_quiz_card.dart';
import 'package:decipher/componenets/recent_quizzes_card.dart';
import 'package:decipher/db/database_helper.dart';
import 'package:decipher/model/quiz.dart';
import 'package:decipher/screens/quiz_instructions_screen.dart';
import 'package:decipher/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class QuizzesHomeScreen extends StatefulWidget {
  const QuizzesHomeScreen({super.key});

  @override
  State<QuizzesHomeScreen> createState() => _QuizzesHomeScreenState();
}

class _QuizzesHomeScreenState extends State<QuizzesHomeScreen>
    with WidgetsBindingObserver {
  Color _getRecentQuizCardColor(String course) {
    if (course == "Visual Communication") {
      return const Color(0xFF00BFA6);
    } else if (course == "Creative Multimedia") {
      return const Color(0xFF6C63FF);
    }
    return const Color(0xFFF9A826);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        setState(() {});
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Quizzes",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.white,
              ),
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
      body: Container(
        margin: const EdgeInsets.only(top: 50.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              color: Colors.white,
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Container(
                      height: 54.0,
                      width: 54.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(27.0),
                        ),
                      ),
                      child: Image.asset("assets/images/user_img.png"),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          "Jennifer",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Quizzes",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 14.0,
            ),
            SizedBox(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HQuizCard(
                    color: const Color(0xFF00BFA6),
                    title: "Visual\nCommunication",
                    onPressed: () {
                      DatabaseHelper.instance.closeDb();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizInstructionScreen(),
                        ),
                      );
                    },
                    assetPath: "assets/images/vc_img.png",
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  HQuizCard(
                    color: const Color(0xFF6C63FF),
                    title: "Creative\nMultimedia",
                    onPressed: () {
                      DatabaseHelper.instance.closeDb();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizScreen(
                            course: "Creative Multimedia",
                          ),
                        ),
                      );
                    },
                    assetPath: "assets/images/cm_img.png",
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  HQuizCard(
                    color: const Color(0xFFF9A826),
                    title: "Advertising\n& Media",
                    onPressed: () {
                      DatabaseHelper.instance.closeDb();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizScreen(
                            course: "Advertising & Media",
                          ),
                        ),
                      );
                    },
                    assetPath: "assets/images/cm_img.png",
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 27.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recent quizzes",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: FutureBuilder<List<Quiz>>(
                  future: DatabaseHelper.instance.getQuizzes(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return RecentQuizzesCard(
                            color: _getRecentQuizCardColor(
                                snapshot.data![index].title),
                            title: snapshot.data![index].title,
                            percent: snapshot.data![index].score,
                            assetPath: snapshot.data![index].title ==
                                    "Visual Communication"
                                ? "assets/images/vc_img.png"
                                : "assets/images/cm_img.png",
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    DatabaseHelper.instance.closeDb();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
