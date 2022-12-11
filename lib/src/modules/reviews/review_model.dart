class ReviewModel {
  String idUser;
  double horns;
  int createdAt;
  int updatedAt;
  String uniqueid;
  String review;
  bool isSpoiler;
  ReviewModel({
    required this.createdAt,
    required this.horns,
    required this.idUser,
    required this.isSpoiler,
    required this.review,
    required this.uniqueid,
    required this.updatedAt,
  });

  ReviewModel.fromJson(Map<String, dynamic> json)
      : createdAt = json['createdAt'],
        horns = json['horns'],
        idUser = json['idUser'],
        isSpoiler = json['isSpoiler'],
        review = json['review'],
        uniqueid = json['uniqueid'],
        updatedAt = json['updatedAt'];

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt,
      'horns': horns,
      'idUser': idUser,
      'isSpoiler': isSpoiler,
      'review': review,
      'uniqueid': uniqueid,
      'updatedAt': updatedAt,
    };
  }
}
