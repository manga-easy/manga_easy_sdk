class RoleTeamModel {
  static get collectionId => '';

  String? id;
  String title;
  String imageLink;

  RoleTeamModel({
    this.id,
    required this.title,
    required this.imageLink,
  });

  RoleTeamModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        imageLink = json['imageLink'],
        id = json[r'$id'];

  Map<String, dynamic> toJson() {
    return {
      r'$id': id,
      'title': title,
      'imageLink': imageLink,
    };
  }
}
