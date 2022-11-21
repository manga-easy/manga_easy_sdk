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
  bool isCatalog;
  bool isViews;

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
    required this.isCatalog,
    required this.isViews,
  });

  ConfigAppModel.fromJson(dynamic json)
      : linkDiscord = json['linkDiscord'],
        politica = json['politica'],
        nivelAtivo = json['nivelAtivo'] ?? false,
        adsOn = json['adsOn'] ?? false,
        build = json['build'] ?? 50,
        isCatalog = json['isCatalog'] ?? false,
        isViews = json['isViews'] ?? false,
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
      'isViews': isViews,
      'isCatalog': isCatalog,
    };
  }

  ConfigAppModel.offline()
      : blockList = [],
        over18List = [],
        linkDiscord = 'https://discord.com/invite/aK6GVd2uH2',
        nivelAtivo = true,
        adsOn = true,
        build = 50,
        updateApp = 1,
        isCatalog = false,
        isViews = false,
        politica = 'https://www.freeprivacypolicy.com/live/f0568cc0-8f04-4413-a5b9-f823bbc733f1';
}
