class ViewsComics {
  static String get collectionId => '6298b6f30ae9b0bf95b5';

  final String uniqueid;
  final String idUser;
  final int dateCria;

  ViewsComics({
    required this.uniqueid,
    required this.idUser,
    required this.dateCria,
  });

  ViewsComics.fromJson(Map<String, dynamic> json)
      : idUser = json['idUser'],
        uniqueid = json['uniqueid'],
        dateCria = json['dateCria'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['idUser'] = idUser;
    data['uniqueid'] = uniqueid;
    data['dateCria'] = dateCria;
    return data;
  }
}
