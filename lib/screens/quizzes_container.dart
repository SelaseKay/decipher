import 'package:decipher/componenets/options_container.dart';
import 'package:decipher/componenets/question_board.dart';
import 'package:decipher/model/question.dart';
import 'package:flutter/material.dart';

class QuizzesContainer extends StatefulWidget {
  const QuizzesContainer({
    super.key,
    required this.question,
    this.currentQNumber = 2,
    this.totalQuestionNumber = 15,
    required this.onOptionSelected,
  });

  final Question question;
  final int currentQNumber;
  final int totalQuestionNumber;

  final void Function(int score) onOptionSelected;

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
          question: widget.question.text,
          currentQNumber: widget.currentQNumber,
          totalQuestionNumber: widget.totalQuestionNumber,
        ),
        const SizedBox(
          height: 50.0,
        ),
        OptionsContainer(
          text: widget.question.optionA,
          color: const Color(0xFFF9A826),
          index: 0,
          selectedOptionIndex: _selectedOptionIndex,
          onTap: () {
            if (widget.question.optionA == widget.question.correctAnswer) {
              widget.onOptionSelected(1);
            } else {
              widget.onOptionSelected(0);
            }
            setState(() {
              _selectedOptionIndex = 0;
            });
          },
        ),
        const SizedBox(
          height: 16.0,
        ),
        OptionsContainer(
          text: widget.question.optionB,
          color: const Color(0xFFF9A826),
          index: 1,
          selectedOptionIndex: _selectedOptionIndex,
          onTap: () {
             if (widget.question.optionB == widget.question.correctAnswer) {
              widget.onOptionSelected(1);
            } else {
              widget.onOptionSelected(0);
            }
            setState(() {
              _selectedOptionIndex = 1;
            });
          },
        ),
        const SizedBox(
          height: 16.0,
        ),
        OptionsContainer(
          text: widget.question.optionC,
          color: const Color(0xFFF9A826),
          selectedOptionIndex: _selectedOptionIndex,
          index: 2,
          onTap: () {
             if (widget.question.optionC == widget.question.correctAnswer) {
              widget.onOptionSelected(1);
            } else {
              widget.onOptionSelected(0);
            }
            setState(() {
              _selectedOptionIndex = 2;
            });
          },
        ),
        const SizedBox(
          height: 16.0,
        ),
        OptionsContainer(
          text: widget.question.optionD,
          selectedOptionIndex: _selectedOptionIndex,
          color: const Color(0xFFF9A826),
          index: 3,
          onTap: () {
             if (widget.question.optionD == widget.question.correctAnswer) {
              widget.onOptionSelected(1);
            } else {
              widget.onOptionSelected(0);
            }
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
