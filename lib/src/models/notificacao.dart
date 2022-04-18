class Notificacao {
  static String get collectionId => '6231187cc9c3b9ec371a';
  String? id;
  String titulo;
  String menssege;
  String? payload;
  Notificacao({
    this.id,
    required this.menssege,
    required this.titulo,
    this.payload,
  });
  Notificacao.fromJson(Map<String, dynamic> json)
      : titulo = json['titulo'],
        menssege = json['menssege'],
        payload = json['payload'],
        id = json['\$id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['titulo'] = titulo;
    data['payload'] = payload;
    data['menssege'] = menssege;
    return data;
  }
}
