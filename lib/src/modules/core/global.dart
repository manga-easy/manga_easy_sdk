import 'package:manga_easy_sdk/src/modules/config/block_list_model.dart';
import 'package:manga_easy_sdk/src/modules/user/user.dart';

class Global {
  static bool isIntruce = true;
  static User? user;
  static Map<String, String> header = {};
  static bool filtraImg = true;
  static bool isInicializedApp = false;
  static bool isNotUnilinkUsed = true;
  static BlockListModel blockListModel = BlockListModel.offline();
  static String? agente;
  static DateTime? ultimaSincronizacao;
  static String buildNumber = '';
  static String version = '';
  static String? jwt;
  static bool filterContentOver18 = false;
  static Map<String, String> getHeader(int hostID) {
    final headers = header;
    if (7 == hostID) {
      return header;
    }
    headers.removeWhere((key, value) => key == 'Authorization');
    return headers;
  }
}
