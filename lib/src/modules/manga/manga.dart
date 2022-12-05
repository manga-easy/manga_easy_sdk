import 'package:manga_easy_hosts/manga_easy_hosts.dart';

import '../../../manga_easy_sdk.dart';

class Manga {
  String? id;
  String title;
  String uniqueid;
  String href;
  String capa;
  int idHost;

  Manga({
    required this.capa,
    required this.href,
    required this.title,
    required this.idHost,
    required this.uniqueid,
  });

  Manga.fromJson(dynamic json)
      : id = json['\$id'],
        title = json['title'],
        uniqueid = json['uniqueid'] ?? Helps.convertUniqueid(json['title']),
        href = json['href'],
        idHost = json['idHost'] ??
            IHostManga.retornaIdHost(
              v: json['href'],
            ),
        capa = json['capa'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['\$id'] = id;
    data['uniqueid'] = uniqueid;
    data['title'] = title;
    data['href'] = href;
    data['capa'] = capa;
    data['idHost'] = idHost;
    return data;
  }
}
