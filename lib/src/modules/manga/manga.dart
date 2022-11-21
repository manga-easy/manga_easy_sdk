import 'package:host_mangas/host_mangas.dart';
import 'package:sdk_manga_easy/sdk_manga_easy.dart';

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
