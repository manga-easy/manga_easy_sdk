import 'package:manga_easy_sdk/src/modules/manga/chapter.dart';

enum Status { todo, doing, paused, done, error }

class ChapterStatus {
  final String uniqueid;
  final Chapter chapter;
  final String? path;
  Status status;

  ChapterStatus({
    required this.chapter,
    required this.status,
    required this.uniqueid,
    this.path,
  });

  ChapterStatus copyWith({
    String? uniqueid,
    Chapter? chapter,
    Status? status,
    String? path,
  }) {
    return ChapterStatus(
      chapter: chapter ?? this.chapter.copyWith(),
      status: status ?? this.status,
      uniqueid: uniqueid ?? this.uniqueid,
      path: path ?? this.path,
    );
  }
}
