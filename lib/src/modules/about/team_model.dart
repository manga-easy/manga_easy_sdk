class TeamModel {
  static get collectionId => '';

  String? id;
  String idUser;
  String idRole;
  String isActive;

  TeamModel({
    this.id,
    required this.idUser,
    required this.idRole,
    required this.isActive,
  });

  TeamModel.fromJson(Map<String, dynamic> json)
      : idUser = json['idUser'],
        idRole = json['idRole'],
        isActive = json['isActive'],
        id = json[r'$id'];

  Map<String, dynamic> toJson() {
    return {
      r'$id': id,
      'idUser': idUser,
      'idRole': idRole,
      'isActive': isActive,
    };
  }
}
