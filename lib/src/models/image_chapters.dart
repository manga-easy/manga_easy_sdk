import 'dart:io';

class ImageChapter {
  String? id;
  String src;
  String? path;
  File? file;

  ImageChapter({required this.src});

  ImageChapter.fromJson(dynamic json)
      : id = json['id'],
        path = json['path'],
        src = json['src'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['src'] = src;
    data['path'] = path;
    return data;
  }
}
