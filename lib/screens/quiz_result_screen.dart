import 'package:decipher/componenets/answer_card.dart';
import 'package:decipher/componenets/score_board.dart';
import 'package:decipher/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class QuizResultScreen extends StatelessWidget {
  const QuizResultScreen({
    super.key,
    required this.scores,
    required this.course,
    required this.totalQuestionNumber,
  });

  final int scores;
  final String course;
  final int totalQuestionNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Quiz",
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
          const SizedBox(
            height: 28.0,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 16.0,
                        ),
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            color: Color(0xFF028B79)),
                        child: Text(
                          "Your result is here",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0,
                                  ),
                        ),
                      ),
                      const SizedBox(
                        width: 14.0,
                      ),
                      Container(
                        height: 100.0,
                        width: 100.0,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFF9A826),
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        child: Container(
                          height: 90.0,
                          width: 90.0,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/user_result_img.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ScoreBoard(
                    totalCorrectAnswers: scores,
                    totalQuestions: totalQuestionNumber,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnswerCard(
                        title: "$scores",
                        subtitle: "correct answers",
                        color: const Color(0xFF00BFA6),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      AnswerCard(
                        title: "${totalQuestionNumber - scores}",
                        subtitle: "wrong answers",
                        color: const Color(0xFFF9A826),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 55.0,
                        width: 150.0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF6C63FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                             Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuizScreen(
                                    course: course,
                                  ),
                                ),
                              );
                          },
                          child: Text(
                            "Try Again",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
