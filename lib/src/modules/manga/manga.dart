class Manga {
  String? id;
  String title;
  String href;
  String capa;

  Manga.fromValue({
    required this.capa,
    required this.href,
    required this.title,
  });

  Manga.fromJson(dynamic json)
      : id = json['\$id'],
        title = json['title'],
        href = json['href'],
        capa = json['capa'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['\$id'] = id;
    data['title'] = title;
    data['href'] = href;
    data['capa'] = capa;
    return data;
  }
}
