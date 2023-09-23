import 'package:manga_easy_sdk/manga_easy_sdk.dart';

class LibraryEntity {
  final String? id;
  final int idHost;
  final String idUser;
  final bool isDeleted;
  final int createdAt;
  final int updatedAt;
  final Manga manga;
  final StatusLibrary status;
  final String uniqueid;
  final bool isSync;

  LibraryEntity({
    this.id,
    required this.idHost,
    required this.idUser,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.manga,
    required this.status,
    required this.uniqueid,
    required this.isSync,
  });

     

  LibraryEntity copyWith({
    String? id,
    int? idHost,
    String? idUser,
    bool? isDeleted,
    int? createdAt,
    int? updatedAt,
    Manga? manga,
    StatusLibrary? status,
    String? uniqueid,
    bool? isSync,
  }) {
    return LibraryEntity(
      id: id ?? this.id,
      idHost: idHost ?? this.idHost,
      idUser: idUser ?? this.idUser,
      isDeleted: isDeleted ?? this.isDeleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      manga: manga ?? this.manga,
      status: status ?? this.status,
      uniqueid: uniqueid ?? this.uniqueid,
      isSync: isSync ?? this.isSync,
    );
  }


}
