class BannerModel {
  static const String collectionID = '61c64c7fd5d94';
  final String id;
  final String title;
  final String subtitle;
  final String btnText;
  final String actionBtnBgColor;
  final String image;
  final String link; // link do botão
  final String gradientColors1;
  final String gradientColors2;
  final String bannerLinkImage;

  BannerModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.btnText,
    required this.actionBtnBgColor,
    required this.image,
    required this.link,
    required this.gradientColors1,
    required this.gradientColors2,
    required this.bannerLinkImage,
  });

  BannerModel.fromJson(Map<String, dynamic> json)
      : id = json['\$id'],
        title = json['title'],
        subtitle = json['subtitle'],
        btnText = json['btnText'],
        actionBtnBgColor = json['actionBtnBgColor'],
        image = json['image'],
        link = json['link'],
        gradientColors1 = json['gradientColors1'],
        bannerLinkImage = json['bannerLinkImage'],
        gradientColors2 = json['gradientColors2'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['btnText'] = btnText;
    data['actionBtnBgColor'] = actionBtnBgColor;
    data['image'] = image;
    data['link'] = link;
    data['gradientColors1'] = gradientColors1;
    data['bannerLinkImage'] = bannerLinkImage;
    data['gradientColors2'] = gradientColors2;
    return data;
  }
}
