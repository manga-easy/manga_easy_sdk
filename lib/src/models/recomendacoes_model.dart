class RecomendacoesModel {
  static const String collectionID = '6240a8375d93f7a0194c';
  String id;
  String uniqueid;
  String title;
  String link;

  RecomendacoesModel({
    required this.id,
    required this.title,
    required this.link,
    required this.uniqueid,
  });

  RecomendacoesModel.fromJson(Map<String, dynamic> json)
      : id = json['\$id'],
        title = json['title'],
        uniqueid = json['uniqueid'],
        link = json['link'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['title'] = title;
    data['uniqueid'] = uniqueid;
    data['link'] = link;
    return data;
  }
}
