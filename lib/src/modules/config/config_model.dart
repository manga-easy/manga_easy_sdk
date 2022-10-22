class ConfigAppModel {
  static String get collectionId => '6186f3b277a9a';
  String? id;
  String linkDiscord;
  String? politica;
  bool nivelAtivo;
  bool adsOn;
  int build;
  int updateApp;
  List<String> blockList;
  List<String> over18List;

  ConfigAppModel({
    this.id,
    required this.linkDiscord,
    this.politica,
    required this.nivelAtivo,
    required this.adsOn,
    required this.build,
    required this.updateApp,
    required this.blockList,
    required this.over18List,
  });

  ConfigAppModel.fromJson(dynamic json)
      : linkDiscord = json['linkDiscord'],
        politica = json['politica'],
        nivelAtivo = json['nivelAtivo'] ?? false,
        adsOn = json['adsOn'] ?? false,
        build = json['build'] ?? 50,
        blockList = List.from(json['block_list'] ?? []),
        over18List = List.from(json['over_18_list'] ?? []),
        updateApp = json['updateApp'] ?? DateTime.now().millisecondsSinceEpoch,
        id = json['\$id'];

  Map<String, dynamic> toJson() {
    return {
      '\$id': id,
      'linkDiscord': linkDiscord,
      'politica': politica,
      'nivelAtivo': nivelAtivo,
      'adsOn': adsOn,
      'build': build,
      'over_18_list': over18List,
      'block_list': blockList,
    };
  }
}
