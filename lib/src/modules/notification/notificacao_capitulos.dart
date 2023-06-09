import 'package:manga_easy_sdk/manga_easy_sdk.dart';

class NotificacaoCapitulos {
  static String get collectionId => '6240955e6c241a37e6b2';
  String? id;
  String uniqueid;
  int idHost;
  List<String> capitulos;
  String nomeManga;
  int datetime;
  String identific;

  NotificacaoCapitulos({
    this.id,
    required this.uniqueid,
    required this.idHost,
    required this.capitulos,
    required this.nomeManga,
    required this.datetime,
    required this.identific,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['uniqueid'] = uniqueid;
    data['idHost'] = idHost;
    data['nomeManga'] = nomeManga;
    data['capitulos'] = capitulos;
    data['datetime'] = datetime;
    data['identific'] = identific;
    return data;
  }

  NotificacaoCapitulos.fromJson(Map<String, dynamic> json)
      : id = json['\$id'],
        uniqueid = Helps.convertUniqueid(json['uniqueid']),
        idHost = json['idHost'],
        nomeManga = json['nomeManga'],
        capitulos = Helps.convertStringToList(json['capitulos']),
        datetime = json['datetime'],
        identific = json['identific'];
}
