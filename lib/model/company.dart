class Company {
  Company({
    required this.name,
    required this.region,
    this.isShortListed = false,
  });

  final String name;
  final String region;
  bool isShortListed;
}
