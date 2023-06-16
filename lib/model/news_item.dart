class NewsItem {
  const NewsItem({
    required this.img,
    this.details = "Borem ipsum dolor sit amet, ",
    this.author = "secteturt.com"
  });

  final String img;
  final String details;
  final String author;
}