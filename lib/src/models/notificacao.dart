class Notificacao {
  static String get collectionId => '6231187cc9c3b9ec371a';
  String? id;
  String titulo;
  String menssege;
  int dateMade;
  Notificacao({
    this.id,
    required this.menssege,
    required this.titulo,
    required this.dateMade,
  });
  Notificacao.fromJson(Map<String, dynamic> json)
      : titulo = json['titulo'],
        menssege = json['menssege'],
        dateMade = json['dateMade'] ?? DateTime.now().millisecondsSinceEpoch,
        id = json['\$id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['titulo'] = titulo;
    data['menssege'] = menssege;
    data['dateMade'] = dateMade;
    return data;
  }
}
