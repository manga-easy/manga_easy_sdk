class ConfigAppModel {
  String linkDiscord;
  String? politica;
  bool nivelAtivo;
  bool adsOn;
  int build;
  int updateApp;
  bool ativaAppwrite;
  String hostAppwrite;
  bool isCatalog;
  bool isViews;

  ConfigAppModel({
    required this.linkDiscord,
    this.politica,
    required this.nivelAtivo,
    required this.adsOn,
    required this.build,
    required this.updateApp,
    required this.isCatalog,
    required this.isViews,
    required this.ativaAppwrite,
    required this.hostAppwrite,
  });

  ConfigAppModel.fromJson(dynamic json)
      : linkDiscord = json['linkDiscord'],
        politica = json['politica'],
        nivelAtivo = json['nivelAtivo'] ?? false,
        adsOn = json['adsOn'] ?? false,
        build = json['build'] ?? 50,
        ativaAppwrite = json['ativa_Appwrite'] ?? true,
        hostAppwrite =
            json['host_appwrite'] ?? 'https://app.lucas-cm.com.br/v1',
        isCatalog = json['isCatalog'] ?? false,
        isViews = json['isViews'] ?? false,
        updateApp = json['updateApp'] ?? 1;

  Map<String, dynamic> toJson() {
    return {
      'linkDiscord': linkDiscord,
      'politica': politica,
      'nivelAtivo': nivelAtivo,
      'adsOn': adsOn,
      'build': build,
      'ativa_Appwrite': ativaAppwrite,
      'host_appwrite': hostAppwrite,
      'isViews': isViews,
      'isCatalog': isCatalog,
      'updateApp': updateApp,
    };
  }

  ConfigAppModel.offline()
      : linkDiscord = 'https://discord.com/invite/aK6GVd2uH2',
        nivelAtivo = true,
        adsOn = true,
        build = 50,
        updateApp = 1,
        isCatalog = false,
        isViews = false,
        ativaAppwrite = true,
        hostAppwrite = 'https://app.lucas-cm.com.br/v1',
        politica =
            'https://www.freeprivacypolicy.com/live/f0568cc0-8f04-4413-a5b9-f823bbc733f1';
}
