import 'package:decipher/componenets/h_quiz_card.dart';
import 'package:flutter/material.dart';

class QuizzesHomeScreen extends StatelessWidget {
  const QuizzesHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Quizzes",
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
      body: Container(
        margin: const EdgeInsets.only(top: 50.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
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
            const SizedBox(
              height: 15.0,
            ),
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              color: Colors.white,
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Container(
                      height: 54.0,
                      width: 54.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(27.0),
                        ),
                      ),
                      child: Image.asset("assets/images/user_img.png"),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          "Jennifer",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            Text(
              "Quizzes",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            SizedBox(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HQuizCard(
                    color: const Color(0xFF00BFA6),
                    title: "Visual\nCommunication",
                    onPressed: () {},
                    assetPath: "assets/images/vc_img.png",
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  HQuizCard(
                    color: const Color(0xFF6C63FF),
                    title: "Creative\nMultimedia",
                    onPressed: () {},
                    assetPath: "assets/images/cm_img.png",
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  HQuizCard(
                    color: const Color(0xFFF9A826),
                    title: "Advertising\n& Media",
                    onPressed: () {},
                    assetPath: "assets/images/cm_img.png",
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 27.0),
            Text(
              "Recent quizzes",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
