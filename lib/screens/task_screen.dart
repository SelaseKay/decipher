import 'package:decipher/componenets/event_card.dart';
import 'package:decipher/componenets/event_container.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight / 2.8;

    return Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          const SizedBox(
            height: 48.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EventContainer(
                icon: Icons.schedule,
                text: "Timetable",
              ),
              EventContainer(
                icon: Icons.calendar_today,
                text: "Academic\n Calendar",
              ),
              EventContainer(
                icon: Icons.event_note,
                text: "Events",
              ),
            ],
          ),
          const SizedBox(
            height: 72.0,
          ),
          Text(
            "Today's Summary",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(
            height: 20.0,
          ),
           EventCard(
            cardHeight: cardHeight,
            title: "Time Table",
            subTitle: "Upload your class timetable",
            date: "21/05/2023",
          ),
        ],
      ),
    );
  }
}
