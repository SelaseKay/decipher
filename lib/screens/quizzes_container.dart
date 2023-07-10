import 'package:decipher/componenets/options_container.dart';
import 'package:decipher/componenets/question_board.dart';
import 'package:decipher/dummy_data.dart';
import 'package:flutter/material.dart';

class QuizzesContainer extends StatefulWidget {
  const QuizzesContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<QuizzesContainer> createState() => _QuizzesContainerState();
}

class _QuizzesContainerState extends State<QuizzesContainer>
    with AutomaticKeepAliveClientMixin<QuizzesContainer> {
  int _selectedOptionIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      children: [
        QuestionBoard(
          question: questions[widget.index].text,
        ),
        const SizedBox(
          height: 50.0,
        ),
        OptionsContainer(
          text: questions[widget.index].optionA,
          color: const Color(0xFFF9A826),
          index: 0,
          selectedOptionIndex: _selectedOptionIndex,
          onTap: () {
            setState(() {
              _selectedOptionIndex = 0;
            });
          },
        ),
        const SizedBox(
          height: 16.0,
        ),
        OptionsContainer(
          text: questions[widget.index].optionB,
          color: const Color(0xFFF9A826),
          index: 1,
          selectedOptionIndex: _selectedOptionIndex,
          onTap: () {
            setState(() {
              _selectedOptionIndex = 1;
            });
          },
        ),
        const SizedBox(
          height: 16.0,
        ),
        OptionsContainer(
          text: questions[widget.index].optionC,
          color: const Color(0xFFF9A826),
          selectedOptionIndex: _selectedOptionIndex,
          index: 2,
          onTap: () {
            setState(() {
              _selectedOptionIndex = 2;
            });
          },
        ),
        const SizedBox(
          height: 16.0,
        ),
        OptionsContainer(
          text: questions[widget.index].optionD,
          selectedOptionIndex: _selectedOptionIndex,
          color: const Color(0xFFF9A826),
          index: 3,
          onTap: () {
            setState(() {
              _selectedOptionIndex = 3;
            });
          },
        ),
        const SizedBox(
          height: 16.0,
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
