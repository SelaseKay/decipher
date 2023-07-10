import 'package:decipher/model/company.dart';
import 'package:decipher/model/major.dart';
import 'package:decipher/model/news_item.dart';
import 'package:decipher/model/question.dart';

import 'model/career.dart';

List<Career> careers = const [
  Career(
    title: "Graphic Designer",
    assetPath: "assets/images/career_path_img1.png",
  ),
  Career(
    title: "Web Designer",
    assetPath: "assets/images/career_path_img2.png",
  ),
  Career(
    title: "Illustrator",
    assetPath: "assets/images/career_path_img3.png",
  ),
  Career(
    title: "Type Design",
    assetPath: "assets/images/career_path_img4.png",
  ),
  Career(
    title: "Audio/Visual Packaging",
    assetPath: "assets/images/career_path_img5.png",
  ),
  Career(
    title: "Art Director",
    assetPath: "assets/images/career_path_img6.png",
  ),
  Career(
    title: "Book Designer",
    assetPath: "assets/images/career_path_img7.png",
  ),
  Career(
    title: "Photographer",
    assetPath: "assets/images/career_path_img8.png",
  ),
];

const List<NewsItem> newsItems = [
  NewsItem(
    img: "assets/images/news_img1.png",
    date: "02 Jan 2023",
    title:
        "KNUST Tops Times Higher\nEducation 2023 Impact Ranking\nfor Quality Education(SDG 4)",
    details:
        "The Kwame Nkrumah University of Science and Technology (KNUST), Kumasi, and Yale School of Nursing in the United States of America (USA) have signed a Memorandum of Understanding (MoU) to establish a collaborative partnership to enhance the pursuit of universal health coverage in Africa. The signing ceremony took place on Tuesday, 6th June 2023, at the Council Chamber of the University.\nRepresenting the team from Yale, Professor Holly Powell Kennedy, the Dean and Helen Vaney Professor of Midwifery at Yale School of Nursing, expressed her enthusiasm for initiating this partnership with KNUST. She revealed that the team had been working diligently for the past two years to make this collaboration a reality. Professor Kennedy further emphasised the commitment of Yale to maintaining such relationships to enhance healthcare on a global scale. She expressed her eagerness to learn and explore new possibilities through this collaboration and commended Dr. Edward Appiah Boateng and Professor (Mrs.) Veronica Millicent Dzomeku for their continuous efforts in helping to establish this partnership.\n\nOn behalf of the Vice-Chancellor, Professor Ellis Owusu-Dabo, the Pro Vice-Chancellor of KNUST, expressed his excitement about the partnership between the two institutions. He described the collaboration as timely and mutually beneficial. He noted that KNUST will not relent on the image it has built for itself as the best university in the world in terms of quality education (SDG 4), adding that the partnership built will further help to build the image and improve the Department of Nursing in both institutions. He hoped that the relationship would help create opportunities for joint projects, knowledge exchange, and further advancements in global healthcare that could transcend to other departments in the University.\n\nProfessor Daniel Yaw Addai Duah, the Dean of the International Programmes Office (IPO), underscored the potential of the partnership to serve as a springboard for joint research initiatives in global healthcare. He anticipated exchange programmes that would enable faculty and staff to learn from each other through the collaboration between both institutions. He also hoped for a lasting relationship between KNUST and Yale.\n\nThe Dean of the Faculty of Allied Health Sciences, Professor (Mrs.) Veronica Millicent Dzomeku, expressed her excitement about this collaboration, highlighting the aspiration of the Department to advance programmes such as Master of Philosophy (MPhil) in Midwifery and Oncology Nursing.\n\nProfessor Kennedy was accompanied by Sohani Sirdeshmukh, Programme Manager of the Office of Global Affairs and Planetary Health, and Linda Ghampson, Lecturer in Simulation at Yale School of Nursing and Mr. Emmanuel Mankattah, Researcher from Educational Assessments and Research Centre (EARC).\n\nAlso present at the meeting were Mrs. Margaret Afi Dzisi, Deputy Registrar of Academic Affairs; Professor Christian Agyare, Provost of the College of Health Sciences; Professor (Mrs.) Victoria Bubunyo Bam, Head of Department of Nursing; Dr. Daniel Norris Bekoe, University Relations Officer; and Dr. Edward Appiah Boateng, Senior Lecturer at the Department of Nursing.\n\nSource: Knust website",
  ),
  NewsItem(
      img: "assets/images/news_img2.png",
      date: "04 Jan 2023",
      title:
          "KNUST And Yale School Of\nNursing Forge Collaborative\nPartnership",
      details:
          "The Kwame Nkrumah University of Science and Technology (KNUST), Kumasi, and Yale School of Nursing in the United States of America (USA) have signed a Memorandum of Understanding (MoU) to establish a collaborative partnership to enhance the pursuit of universal health coverage in Africa. The signing ceremony took place on Tuesday, 6th June 2023, at the Council Chamber of the University.\n\nRepresenting the team from Yale, Professor Holly Powell Kennedy, the Dean and Helen Vaney Professor of Midwifery at Yale School of Nursing, expressed her enthusiasm for initiating this partnership with KNUST. She revealed that the team had been working diligently for the past two years to make this collaboration a reality. Professor Kennedy further emphasised the commitment of Yale to maintaining such relationships to enhance healthcare on a global scale. She expressed her eagerness to learn and explore new possibilities through this collaboration and commended Dr. Edward Appiah Boateng and Professor (Mrs.) Veronica Millicent Dzomeku for their continuous efforts in helping to establish this partnership.\n\nOn behalf of the Vice-Chancellor, Professor Ellis Owusu-Dabo, the Pro Vice-Chancellor of KNUST, expressed his excitement about the partnership between the two institutions. He described the collaboration as timely and mutually beneficial. He noted that KNUST will not relent on the image it has built for itself as the best university in the world in terms of quality education (SDG 4), adding that the partnership built will further help to build the image and improve the Department of Nursing in both institutions. He hoped that the relationship would help create opportunities for joint projects, knowledge exchange, and further advancements in global healthcare that could transcend to other departments in the University.\n\nProfessor Daniel Yaw Addai Duah, the Dean of the International Programmes Office (IPO), underscored the potential of the partnership to serve as a springboard for joint research initiatives in global healthcare. He anticipated exchange programmes that would enable faculty and staff to learn from each other through the collaboration between both institutions. He also hoped for a lasting relationship between KNUST and Yale.\n\nThe Dean of the Faculty of Allied Health Sciences, Professor (Mrs.) Veronica Millicent Dzomeku, expressed her excitement about this collaboration, highlighting the aspiration of the Department to advance programmes such as Master of Philosophy (MPhil) in Midwifery and Oncology Nursing.\n\nProfessor Kennedy was accompanied by Sohani Sirdeshmukh, Programme Manager of the Office of Global Affairs and Planetary Health, and Linda Ghampson, Lecturer in Simulation at Yale School of Nursing and Mr. Emmanuel Mankattah, Researcher from Educational Assessments and Research Centre (EARC).\n\nAlso present at the meeting were Mrs. Margaret Afi Dzisi, Deputy Registrar of Academic Affairs; Professor Christian Agyare, Provost of the College of Health Sciences; Professor (Mrs.) Victoria Bubunyo Bam, Head of Department of Nursing; Dr. Daniel Norris Bekoe, University Relations Officer; and Dr. Edward Appiah Boateng, Senior Lecturer at the Department of Nursing.\n\nSource: Knust website"),
  NewsItem(
      img: "assets/images/news_img3.png",
      date: "23 May 2023",
      title: "Skill Organizing Teams attend\nWorldSkills Workshop",
      details:
          "WorldSkills Ghana, the 81st Member of World Skills, organized a two-day capacity-building workshop for Skill Organizing Teams (SOTs) in Accra. The workshop was organized to prepare SOTs for the Zonal Competition scheduled for May 2023.\n\nSkill #40 Graphic Design Technology is one of the priority skills for national development. The SOTs for Skill #40 who were in attendance at this workshop were Prof. Steve Kquofi (Chief Expert), Dr. Ismaila Moro (Deputy Chief Expert) from the Department of Communication Design, Mr. Lawson Quansah (Workshop Manager), and Michael Ato Essuman (Jury Head).\n\nClosing the workshop the SOTS were empowered to organise the Zonal Competition to the World Skills Standard.\n\nThe WorldSkills competitions are held at district, regional, national, and international levels to encourage creativity, innovation, and competitiveness among learners, and instructors.\n\nSource: Decode Website"),
  NewsItem(
    img: "assets/images/news_img4.png",
    date: "02 Jan 2023",
    title:
        "GASA Donates Media Production\nVests to the Department of\nCommunication Design",
    details:
        "The Graphic Arts Students’ Association recently donated 50 branded media production vests to the Department of Communication Design. The vests, which are emblazoned with the name of the department and the GASA logo, will be used by students in the department during studio practice and to help raise awareness of their studies and the work they do. In attendance were some senior members of the department to receive the items on behalf of the Head of Department.\n\nSpeaking on behalf of the association, the president, Master Benjamin Koomson said that the media production vests will help students connect and engage professionally with academic projects and media production work. He further added that, \"we believe that our support of media studio production is very important for the success and growth of students’ academics and career. We want to ensure that our members are equipped with the necessary skills to handle the changes that are happening in the media landscape today. It is great to see students taking active roles in their education and raising awareness of their studies\".\n\nSource: GASA",
  ),
  NewsItem(
    img: "assets/images/news_img5.png",
    date: "15 Jun 2023",
    title: "Winners of The Fourth Book Logo\nDesign Competition",
    details:
        "We announce the Winners of the The FOURTH BOOK Logo Design competition.\n\nThis contest was organized by The Fourth Book, a newly established company that seeks to empower Africans in the diaspora; in collaboration with the Department of Communication Design (DeCoDe), KNUST.\n\nFrom the many entries received, two submissions were selected.\n\nCongratulations to the winners:\n\n1st Place: Russell Gyamfi Boateng\n\n2nd Place: Vanessah Lanyoh\n\nThe Fourth Book + DeCoDe express appreciation to all participants for their creative logo design submissions.",
  ),
];

const List<Major> majors = [
  Major(title: "Advertising and Media"),
  Major(
    title: "Creative Multimedia",
    assetPath: "assets/images/major_overview_img2.png",
  ),
  Major(
    title: "Visual Communication",
    assetPath: "assets/images/major_overview_img3.png",
  ),
];

List<Company> companies = [
  // Company(name: "Apex Ghana"),
  // Company(name: "Lime X Honey"),
  // Company(name: "Graphics"),
  // Company(name: "MX 24 GH"),
  // Company(name: "The Royals Design"),
  // Company(name: "GBC"),
  // Company(name: "Isel Media"),
  // Company(name: "Social Ghana"),
  // Company(name: "Apex Graphic"),
  // Company(name: "Aprock Print"),
  // Company(name: "UITS"),
  // Company(name: "Eleventh Space"),
];

List<Question> questions = [
  const Question(
    text: "Psychology is defined as the scientific study of:",
    optionA: "a. people and things",
    optionB: "b. emotions and beliefs",
    optionC: "c. perception and religion",
    optionD: "d. mind and behaviour",
    correctAnswer: "d. mind and behaviour",
  ),
  const Question(
    text: "The word Psychologycome from ?",
    optionA: "a. Latin",
    optionB: "b.Spanish",
    optionC: "c.German",
    optionD: "d.Greek",
    correctAnswer: "a. Latin",
  ),
];
