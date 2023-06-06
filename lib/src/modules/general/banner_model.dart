class BannerModel {
  String? id;
  String type;
  String image;
  String link;
  final int createdat;
  final int updatedat;

  BannerModel({
    this.id,
    required this.image,
    required this.link,
    required this.type,
    required this.createdat,
    required this.updatedat,
  });
}
