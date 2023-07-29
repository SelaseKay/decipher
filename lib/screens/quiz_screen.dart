import 'package:decipher/componenets/progress_indicator.dart';
import 'package:decipher/componenets/timer_text.dart';
import 'package:decipher/db/database_helper.dart';
import 'package:decipher/db/recent_quizzes_db_helper.dart';
import 'package:decipher/model/question.dart';
import 'package:decipher/model/quiz.dart';
import 'package:decipher/screens/quiz_result_screen.dart';
import 'package:decipher/screens/quizzes_container.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
    required this.course,
  });

  final String course;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController _controller = PageController();

  int _currentIndex = 0;
  final List<int> _scores = List<int>.generate(15, (index) => 0);

  late Future<List<Question>> questions;

  @override
  void initState() {
    super.initState();
    questions = DatabaseHelper.instance.getQuestions(
      "quiz.db",
      widget.course == "Visual Communication"
          ? "visual_communication"
          : (widget.course == "Creative Multimedia"
              ? "creative_multimedia"
              : "advertising"),
    );
  }

  @override
  Widget build(BuildContext context) {
    final questionProgressIndicatorWidth =
        MediaQuery.of(context).size.width - 64;
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
      body: FutureBuilder<List<Question>>(
          future: questions,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else if (snapshot.hasData) {
              return Column(
                children: [
                  const SizedBox(
                    height: 28.0,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                            ),
                            child: TimerText(
                              onTimeUp: () {
                                print("Time is up");
                                int totalScore = _scores.reduce(
                                    (value, element) => value + element);
                                Fluttertoast.showToast(
                                    msg: "Oops, You've run out of time!",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuizResultScreen(
                                      course: widget.course,
                                      scores: totalScore,
                                      totalQuestionNumber:
                                          snapshot.data!.length,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          QuestionProgressIndicator(
                            width: questionProgressIndicatorWidth,
                            progressIndicatorWidth: (_currentIndex + 1) /
                                snapshot.data!.length *
                                questionProgressIndicatorWidth,
                            currentQNumber: _currentIndex + 1,
                            totalQuestions: snapshot.data!.length,
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Expanded(
                            child: PageView(
                              controller: _controller,
                              physics: const NeverScrollableScrollPhysics(),
                              children: List.generate(
                                snapshot.data!.length,
                                (index) {
                                  return QuizzesContainer(
                                    currentQNumber: index + 1,
                                    totalQuestionNumber: snapshot.data!.length,
                                    question: snapshot.data![index],
                                    onOptionSelected: (score) {
                                      _scores[index] = score;
                                    },
                                  );
                                },
                              ),
                            ),
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
                        Visibility(
                          maintainSize: true,
                          maintainAnimation: true,
                          maintainState: true,
                          visible: _currentIndex == 0 ? false : true,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFF9A826),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            onPressed: () async {
                              await _controller.previousPage(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.bounceIn,
                              );
                              setState(() {
                                _currentIndex = _controller.page!.toInt();
                              });
                            },
                            child: Text(
                              "Prev",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF00BFA6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          onPressed: () async {
                            if (_currentIndex + 1 == snapshot.data!.length) {
                              int totalScore = _scores
                                  .reduce((value, element) => value + element);
                              await RecentQuizDbHelper.instance.insertQuiz(Quiz(
                                  title: widget.course,
                                  score: totalScore / snapshot.data!.length));
                              if (context.mounted) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuizResultScreen(
                                      course: widget.course,
                                      scores: totalScore,
                                      totalQuestionNumber:
                                          snapshot.data!.length,
                                    ),
                                  ),
                                );
                              }
                            }
                            await _controller.nextPage(
                              duration: const Duration(microseconds: 200),
                              curve: Curves.bounceInOut,
                            );
                            setState(() {
                              _currentIndex = _controller.page!.toInt();
                            });
                          },
                          child: Text(
                            "Next",
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
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
