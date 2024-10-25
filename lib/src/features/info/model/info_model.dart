class InfoModel {
  final double rating;
  final String birthday;
  final List<AboutMeModel> aboutMe;

  const InfoModel({
    required this.rating,
    required this.birthday,
    required this.aboutMe,
  });
}

class AboutMeModel {
  final String title;
  final String description;

  const AboutMeModel({
    required this.title,
    required this.description,
  });
}
