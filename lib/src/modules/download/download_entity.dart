import 'package:manga_easy_sdk/manga_easy_sdk.dart';
import 'package:manga_easy_sdk/src/modules/download/chapter_status.dart';

class DownloadEntity {
  String? id;
  String uniqueid;
  String? idUser;
  String folder;
  Manga manga;
  List<ChapterStatus> chapters;
  DateTime createAt;

  DownloadEntity({
    this.id,
    required this.uniqueid,
    required this.idUser,
    required this.createAt,
    required this.manga,
    required this.folder,
    required this.chapters,
  });

  Status get status {
    if (chapters.any((e) => e.status != Status.done)) {
      return Status.todo;
    }
    return Status.done;
  }

  DownloadEntity copyWith({
    String? id,
    String? uniqueid,
    String? idUser,
    String? folder,
    Manga? manga,
    List<ChapterStatus>? chapters,
    DateTime? createAt,
  }) {
    return DownloadEntity(
      id: id ?? this.id,
      uniqueid: uniqueid ?? this.uniqueid,
      idUser: idUser ?? this.idUser,
      folder: folder ?? this.folder,
      manga: manga ?? this.manga,
      chapters: chapters ?? this.chapters,
      createAt: createAt ?? this.createAt,
    );
  }

  bool isChapterDownloaded(Chapter chapter) {
    return chapters.indexWhere(
          (e) => e.chapter.title == chapter.title && e.status == Status.done,
        ) !=
        -1;
  }
}
