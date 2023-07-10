import 'package:decipher/componenets/member_container.dart';
import 'package:flutter/material.dart';

class MeetTeamScreen extends StatelessWidget {
  const MeetTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Meet the Team",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.black,
              ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 16.0,
        ),
        children: const [
          SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: MemberContainer(
                  assetPath: "assets/images/member_1.png",
                  description:
                      "Dr. Ismaila Moro, an exceptional project supervisor and lecturer.\n\nDr. Moro played a pivotal role in our team's success, providing invaluable guidance, expertise, and unwavering support throughout our project accomplishments",
                ),
              ),
              SizedBox(width: 20.0),
              Flexible(
                child: MemberContainer(
                  assetPath: "assets/images/member_2.png",
                  description:
                      "Meet Andy, who is a passionate designer with a focus on visual communication. \n\nHe's also passionate about anime and crafting captivating user interfaces (UI/UX). His dedication to design makes him a valuable asset to any design project.",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: MemberContainer(
                  assetPath: "assets/images/member_3.png",
                  description:
                      "Hi there! \n\nI go by Derrick an ambitious, versatile individual with a deep passion for education, UI design, and animation. My hunger for knowledge and diverse skill set allow me to excel in various fields, and I hope to leave a lasting impact on the world.",
                ),
              ),
              SizedBox(width: 20.0),
              Flexible(
                child: MemberContainer(
                  assetPath: "assets/images/member_4.png",
                  description:
                      "Edna, a communication design enthusiast with a love for academia, a passion for design, and a strong belief in her abilities. \n\nWith dedication, creativity, and reliance on God's strength, Edna is poised to make a meaningful contribution to the world of communication design and the world itself.",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: MemberContainer(
                  assetPath: "assets/images/member_5.png",
                  description:
                      "Christiana here, photography is one of my many passion, as well as video editing and any form of editing.\n\nVisual communication is my major hence a bit of graphic design, coming up with new ideas takes time with me but eventually makes sure to get it done.",
                ),
              ),
              SizedBox(width: 20.0),
              Flexible(
                child: MemberContainer(
                  assetPath: "assets/images/member_6.png",
                  description:
                      "Hi, I am Chelsea Akua Amofaa Sraha, popularly known as Chelsea. \n\nI enjoy reading online and learning, and I have a passion for design. I hope to become a better person, and I am excited to see what the future holds.",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
