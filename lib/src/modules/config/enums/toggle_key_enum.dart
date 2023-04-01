enum ToggleKey {
  urlAppwrite("https://app.lucas-cm.com.br/v1"),
  linkDiscord('https://discord.gg/aK6GVd2uH2'),
  nivelAtivo(false),
  adsOn(true),
  politicaLink(
      'https://www.freeprivacypolicy.com/live/f0568cc0-8f04-4413-a5b9-f823bbc'),
  isAuth(true),
  isViews(false),
  isCatalog(false);

  const ToggleKey(this.defaultValue);

  final dynamic defaultValue;
}
