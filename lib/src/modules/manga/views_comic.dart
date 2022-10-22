class ViewsComics {
  static String get collectionId => '6298b6f30ae9b0bf95b5';
  String? id;
  String uniqueid;
  String idUser;
  String dateCria;
  int idHost;

  ViewsComics({
    required this.uniqueid,
    required this.idUser,
    required this.dateCria,
    required this.idHost,
  });

  ViewsComics.fromJson(Map<String, dynamic> json)
      : idUser = json['idUser'],
        id = json['\$id'],
        uniqueid = json['uniqueid'],
        idHost = json['idHost'],
        dateCria = json['dateCria'];

  Map<String, dynamic> toJson() {
    return {
      '\$id': id,
      'idUser': idUser,
      'uniqueid': uniqueid,
      'idHost': idHost,
      'dateCria': dateCria,
    };
  }
}
