class Major {
  const Major({
    required this.title,
    this.assetPath = "assets/images/major_overview_img1.png",
    this.description =
        "Visual communication is the process of conveying information and ideas through visual elements such as images, illustrations, videos, and graphics. It is a powerful tool that can be used to inform, educate, persuade, and entertain an audience. Visual communication can take many forms, including advertising, branding, packaging, web design, user interfaces, infographics, data visualization, and more.\n\nVisual communication is based on the idea that people are more likely to remember and understand information that is presented visually than information that is presented in other forms, such as written or spoken language. This is because the human brain processes visual information faster than it processes other forms of information, and is better able to remember and recall visual information over time.\n\nThe use of visual communication has become increasingly important in the digital age, as people are bombarded with vast amounts of information every day. Effective visual communication can help cut through the noise and grab people's attention, leading to increased engagement and better communication. It is an essential part of modern communication strategies and is used in almost every aspect of our lives, from social media and advertising to education and healthcare.",
    this.overview =
        "- Visual communication is about conveying information and ideas through visual elements such as images, videos, and graphics.\n\n- It is used in advertising, branding, packaging, web design, infographics, data visualization, and more.\n\n- Visual communication is effective because people process visual information faster and remember it better than other forms of information.\n\n- It has become increasingly important in the digital age to cut through the noise and grab people's attention.\n\n- Visual communication is used in almost every aspect of our lives, from social media and advertising to education and healthcare.",
    this.watch = "",
  });

  final String title;
  final String assetPath;
  final String description;
  final String overview;
  final String watch;
}
