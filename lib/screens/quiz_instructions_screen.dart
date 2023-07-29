import 'package:decipher/db/database_helper.dart';
import 'package:decipher/screens/quiz_screen.dart';
import 'package:decipher/string.dart';
import 'package:flutter/material.dart';

class QuizInstructionScreen extends StatefulWidget {
  const QuizInstructionScreen({
    super.key,
    this.courseName = "Visual Communication",
  });

  final String courseName;

  @override
  State<QuizInstructionScreen> createState() => _QuizInstructionScreenState();
}

class _QuizInstructionScreenState extends State<QuizInstructionScreen> {

  @override
  void initState() {
    super.initState();
    DatabaseHelper.instance.closeDb();
  }

  @override
  Widget build(BuildContext context) {
    final quizHeight = MediaQuery.of(context).size.height / 3.6;
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Start Quiz",
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 50.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: ListView(
                children: [
                  Container(
                    height: quizHeight,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                    ),
                    child: Image.asset("assets/images/start_quiz_img.png"),
                  ),
                  const SizedBox(
                    height: 26.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                      color: Color(0xFF6C63FF),
                    ),
                    child: Center(
                      child: Text(
                        "Course: ${widget.courseName}",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: "No of Questions: ",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                  ),
                        ),
                        TextSpan(
                          text: "20",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: "Duration: ",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                  ),
                        ),
                        TextSpan(
                          text: "15min",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    "Instructions",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    quizInstructions,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 20.0,
              bottom: 30.0,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF065349),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF9A826),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "15:00",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                      )
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF00BFA6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(
                          course: "Visual Communication",
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Start Quiz",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
