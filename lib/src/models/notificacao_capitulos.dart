class NotificacaoCapitulos {
  static String get collectionId => '6240955e6c241a37e6b2';
  String? id;
  String uniqueid;
  String message;
  int idHost;
  List<String> capitulos;
  String nomeManga;
  int datetime;
  NotificacaoCapitulos({
    this.id,
    required this.message,
    required this.uniqueid,
    required this.idHost,
    required this.capitulos,
    required this.nomeManga,
    required this.datetime,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['uniqueid'] = uniqueid;
    data['idHost'] = idHost;
    data['message'] = message;
    data['nomeManga'] = nomeManga;
    data['capitulos'] = capitulos;
    data['datetime'] = datetime;
    return data;
  }
}
