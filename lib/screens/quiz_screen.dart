import 'package:decipher/componenets/progress_indicator.dart';
import 'package:decipher/componenets/timer_text.dart';
import 'package:decipher/dummy_data.dart';
import 'package:decipher/screens/quizzes_container.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController _controller = PageController();

  int _currentIndex = 0;

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
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: TimerText(
                      onTimeUp: () {
                        print("Time is up");
                      },
                    ),
                  ),
                  QuestionProgressIndicator(
                    currentQNumber: _currentIndex + 1,
                    totalQuestions: questions.length,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Expanded(
                      child: PageView(
                    controller: _controller,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(questions.length, (index) {
                      return QuizzesContainer(index: index);
                    }),
                  ))
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
                    await _controller.nextPage(
                      duration: const Duration(microseconds: 200),
                      curve: Curves.bounceIn,
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
      ),
    );
  }
}
