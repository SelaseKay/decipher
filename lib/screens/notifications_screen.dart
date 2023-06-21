import 'package:decipher/componenets/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notification",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          bottom: 16.0,
        ),
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Today",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: const Color(0xFF092724),
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const NotificationCard(
            title: "Congratulations! Your Design\nHas Been Approved",
            time: "8:00 AM",
            bgColor: Color(0xFFECF4FF),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const NotificationCard(
            title: "Submit Your Entry",
            time: "7:30 AM",
          ),
          const SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Yesterday",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: const Color(0xFF092724),
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
        const SizedBox(
            height: 16.0,
          ),
          const NotificationCard(
            title: "Design Inspiration:\nCheck Out These Amazing Designs",
            time: "3:00 AM",
          ),
         const SizedBox(
            height: 16.0,
          ),
          const NotificationCard(
            title: "New Fonts Available",
            time: "2:00 PM",
          ),
         const SizedBox(
            height: 16.0,
          ),
          const NotificationCard(
            title: "New Design Templates Available",
            time: "2:00 PM",
          ),
        ],
      ),
    );
  }
}
