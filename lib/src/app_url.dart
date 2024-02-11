class AppUrl {
  static bool isDebug = false;
  static const config = 'https://micro-config.lucas-cm.com.br';
  static const appwrite = 'https://auth.lucas-cm.com.br/v1';
  static String monolito = isDebug
      ? 'https://test-monolito.lucas-cm.com.br'
      : 'https://monolito.lucas-cm.com.br';
}
