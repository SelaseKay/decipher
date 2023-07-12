import 'dart:async';

import 'package:flutter/material.dart';

class TimerText extends StatefulWidget {
  const TimerText({
    super.key,
    this.startTime = 900,
    required this.onTimeUp,
  });
  final int startTime;
  final VoidCallback onTimeUp;

  @override
  State<TimerText> createState() => _TimerTextState();
}

class _TimerTextState extends State<TimerText> {
  int _secondsRemaining = 900; // 15 minutes in seconds
  late Timer _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          widget.onTimeUp();
          _timer.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void resetTimer() {
    setState(() {
      _secondsRemaining = 120; // Reset to 15 minutes
      _timer.cancel();
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Icon(
          Icons.schedule,
          color: Color(0xFF212121),
          size: 16.0,
        ),
        const SizedBox(width: 4.0,),
        Text(
          formatTime(_secondsRemaining),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF212121)),
        )
      ],
    );
  }
}
