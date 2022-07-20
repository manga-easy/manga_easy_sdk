class RecomendacoesModel {
  static const String collectionID = '6240a8375d93f7a0194c';
  String? id;
  String uniqueid;
  String title;
  String link;
  int dataCria;

  RecomendacoesModel({
    this.id,
    required this.title,
    required this.link,
    required this.uniqueid,
    required this.dataCria,
  });

  RecomendacoesModel.fromJson(Map<String, dynamic> json)
      : id = json['\$id'],
        title = json['title'],
        uniqueid = json['uniqueid'],
        dataCria = json['dataCria'] ?? DateTime.now().millisecondsSinceEpoch,
        link = json['link'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['title'] = title;
    data['uniqueid'] = uniqueid;
    data['link'] = link;
    data['dataCria'] = dataCria;
    return data;
  }
}
