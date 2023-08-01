import 'package:manga_easy_sdk/src/modules/manga/chapter.dart';

enum Status { todo, doing, paused, done, error }

class ChapterStatus {
  final String uniqueid;
  final Chapter chapter;
  Status status;

  ChapterStatus(this.chapter, this.status, this.uniqueid);

  ChapterStatus copyWith({
    String? uniqueid,
    Chapter? chapter,
    Status? status,
  }) {
    return ChapterStatus(
      chapter ?? this.chapter.copyWith(),
      status ?? this.status,
      uniqueid ?? this.uniqueid,
    );
  }
}
