class BannerModel {
  static const String collectionID = '61c64c7fd5d94';
  final String? id;
  final String type;
  final String image;
  final String link;

  BannerModel({
    this.id,
    required this.image,
    required this.link,
    required this.type,
  });

  BannerModel.fromJson(Map<String, dynamic> json)
      : id = json['\$id'],
        type = json['type'],
        image = json['image'],
        link = json['link'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['image'] = image;
    data['link'] = link;
    data['type'] = type;
    return data;
  }
}
