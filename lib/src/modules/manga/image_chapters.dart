enum TypeFonte { text, image }

class ImageChapter {
  String? id;
  String src;
  String? path;
  TypeFonte tipo;
  @Deprecated('Não será mais usado')
  int state;

  ImageChapter({required this.src, required this.state, required this.tipo});

  ImageChapter.fromJson(dynamic json)
      : id = json['id'],
        path = json['path'],
        tipo = TypeFonte.values.elementAt(json['tipo'] ?? 1),
        state = json['state'] ?? 1,
        src = json['src'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['src'] = src;
    data['path'] = path;
    data['tipo'] = tipo.index;
    data['state'] = state;
    return data;
  }
}
