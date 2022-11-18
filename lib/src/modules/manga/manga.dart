class Manga {
  String? id;
  String title;
  String href;
  String capa;
  int idHost;

  Manga.fromValue({
    required this.capa,
    required this.href,
    required this.title,
    required this.idHost,
  });

  Manga.fromJson(dynamic json)
      : id = json['\$id'],
        title = json['title'],
        href = json['href'],
        idHost = json['idHost'],
        capa = json['capa'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['\$id'] = id;
    data['title'] = title;
    data['href'] = href;
    data['capa'] = capa;
    data['idHost'] = idHost;
    return data;
  }
}
