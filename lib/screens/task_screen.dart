import 'package:decipher/componenets/event_card.dart';
import 'package:decipher/componenets/event_container.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});

  final _eventCardKey1 = GlobalKey();
  final _eventCardKey2 = GlobalKey();
  final _eventCardKey3 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight / 2.8;

    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    onPressed: () {
                      Scrollable.ensureVisible(_eventCardKey1.currentContext!);
                    },
                    text: "Timetable",
                  ),
                  EventContainer(
                    icon: Icons.calendar_today,
                    onPressed: () {
                      Scrollable.ensureVisible(_eventCardKey2.currentContext!);
                    },
                    text: "Academic\n Calendar",
                  ),
                  EventContainer(
                    icon: Icons.event_note,
                    onPressed: () {
                      Scrollable.ensureVisible(_eventCardKey3.currentContext!);
                    },
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
                key: _eventCardKey1,
                cardHeight: cardHeight,
                imgPath: 'assets/images/task_img_1.png',
                title: "Time Table",
                subTitle: "Upload your class timetable",
                date: "21/05/2023",
              ),
              const SizedBox(
                height: 35.0,
              ),
              EventCard(
                key: _eventCardKey2,
                cardHeight: cardHeight,
                 imgPath: 'assets/images/task_img_2.png',
                title: "Examination",
                subTitle: "There is no Examination today",
                date: "21/05/2023",
              ),
              const SizedBox(
                height: 35.0,
              ),
              EventCard(
                key: _eventCardKey3,
                cardHeight: cardHeight,
                title: "Event",
                subTitle: "There is no Event today",
                date: "21/05/2023",
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
