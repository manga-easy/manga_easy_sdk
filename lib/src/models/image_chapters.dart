class ImageChapter {
  String? id;
  String src;
  String? path;
  int state;

  ImageChapter({required this.src, required this.state});

  ImageChapter.fromJson(dynamic json)
      : id = json['id'],
        path = json['path'],
        state = json['state'] ?? 1,
        src = json['src'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['src'] = src;
    data['path'] = path;
    data['state'] = state;
    return data;
  }
}
