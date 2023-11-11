import 'package:manga_easy_sdk/manga_easy_sdk.dart';

class HistoryEntity {
  final String? id;
  final String uniqueid;
  final Manga manga;
  final String idUser;
  @Deprecated("Use currentChapter 0.13.0 -> 0.15.0")
  final Chapter? capAtual;
  final String? currentChapter;
  final int updatedAt;
  final int createdAt;
  final bool isDeleted;
  final List<String> chapterLidos;
  final bool isSync;

  HistoryEntity({
    this.id,
    this.capAtual,
    this.currentChapter,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.idUser,
    required this.manga,
    required this.chapterLidos,
    required this.uniqueid,
    required this.isSync,
  });

  HistoryEntity copyWith({
    String? id,
    String? uniqueid,
    Manga? manga,
    String? idUser,
    Chapter? capAtual,
    String? currentChapter,
    int? updatedAt,
    int? createdAt,
    bool? isDeleted,
    List<String>? chapterLidos,
    bool? isSync,
  }) {
    return HistoryEntity(
      id: id ?? this.id,
      uniqueid: uniqueid ?? this.uniqueid,
      manga: manga ?? this.manga,
      idUser: idUser ?? this.idUser,
      currentChapter: currentChapter ?? this.currentChapter,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      isDeleted: isDeleted ?? this.isDeleted,
      chapterLidos: chapterLidos ?? this.chapterLidos,
      isSync: isSync ?? this.isSync,
    );
  }
}
