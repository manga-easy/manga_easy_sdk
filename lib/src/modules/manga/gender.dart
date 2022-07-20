class Gender {
  String? id;
  String title;
  String href;

  Gender.fromValue({
    required this.href,
    required this.title,
  });

  Gender.fromJson(dynamic json)
      : title = json['title'],
        href = json['href'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['href'] = href;

    return data;
  }
}
