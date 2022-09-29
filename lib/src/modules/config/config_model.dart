class ConfigAppModel {
  static String get collectionId => '6186f3b277a9a';
  String? id;
  String linkDiscord;
  String? politica;
  bool nivelAtivo;
  bool adsOn;
  int build;
  int updateApp;
  ConfigAppModel({
    this.id,
    required this.linkDiscord,
    this.politica,
    required this.nivelAtivo,
    required this.adsOn,
    required this.build,
    required this.updateApp,
  });

  ConfigAppModel.fromJson(dynamic json)
      : linkDiscord = json['linkDiscord'],
        politica = json['politica'],
        nivelAtivo = json['nivelAtivo'] ?? false,
        adsOn = json['adsOn'] ?? false,
        build = json['build'] ?? 50,
        updateApp = json['updateApp'] ?? DateTime.now().millisecondsSinceEpoch,
        id = json['\$id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['linkDiscord'] = linkDiscord;
    data['politica'] = politica;
    data['nivelAtivo'] = nivelAtivo;
    data['adsOn'] = adsOn;
    data['build'] = build;
    return data;
  }
}
