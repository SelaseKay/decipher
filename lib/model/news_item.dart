class NewsItem {
  const NewsItem({
    required this.img,
    this.details = "Borem ipsum dolor sit amet, ",
    required this.date,
    required this.title,
  });

  final String img;
  final String title;
  final String date;
  final String details;
}
