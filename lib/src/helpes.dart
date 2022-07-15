import 'dart:convert';
import 'dart:io';

import 'package:logger/logger.dart';

class Helps {
  static Future<bool> verificarConexao() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }

  static String ajustaPath(String url) {
    if (url.contains('/')) url = url.replaceFirst('/', '');
    if (url.contains('/')) url = url.replaceAll('/', ' > ');
    for (var i = 0; i < 30; i++) {
      if (url.contains('[$i]')) url = url.replaceAll('[$i]', '');
    }

    return url;
  }

  static String removeUnicode(String id) {
    var simbolos = ['卍', '’', '–'];
    for (var item in simbolos) {
      id = id.replaceAll(item, '');
    }
    return id;
  }

  static String convertUniqueid(String manga) {
    return manga.replaceAll(RegExp('[^A-Za-z0-9]'), '');
  }

  static decode(value) {
    if (value is String) {
      return json.decode(value);
    }
    return value;
  }

  static String validaCapitulos(String element) {
    String numeroCap = '';
    try {
      numeroCap = element.replaceFirst('Capítulo #', '');
      numeroCap = numeroCap.replaceFirst('Cap.', '');
      if (numeroCap.startsWith('0') && numeroCap.length > 2) {
        numeroCap = numeroCap.substring(1, numeroCap.length);
      }
      return numeroCap.trim();
    } catch (e) {
      return element.trim();
    }
  }

  static String capitalize(String string) {
    return "${string[0].toUpperCase()}${string.substring(1).toLowerCase()}";
  }

  static void log(error) {
    var logger = Logger();
    try {
      logger.e(error, null, error.stackTrace);
    } catch (e) {
      logger.w(error, null);
    }
  }
}
