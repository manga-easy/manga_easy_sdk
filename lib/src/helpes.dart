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

  @Deprecated('Use [removeASCII]')
  static String removeUnicode(String id) {
    var simbolos = ['卍', '’', '–', "'", "\n", r"\s"];
    for (var item in simbolos) {
      id = id.replaceAll(item, '');
    }
    return id;
  }

  // remove todos os caracteres sem ser ASCII menos o espaço e o • -
  static String removeASCII(String text) {
    var simbolos = ['卍', '’', '–', "'", "\n", r"\s"];
    for (var item in simbolos) {
      text = text.replaceAll(item, '');
    }
    return text;
  }

  static String convertUniqueid(String manga) {
    final termos = [
      '(br)',
      'br',
      'color',
      'pt-br',
    ];
    for (var item in termos) {
      manga = manga.replaceAll(item, '');
    }
    return manga.replaceAll(RegExp('[^A-Za-z0-9]'), '');
  }

  static decode(value) {
    if (value is String) {
      return json.decode(value.replaceAll('\n', ''));
    }
    return value;
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

  static int retornaIdHost({required String v}) {
    if (v.contains('mangahost4') ||
        v.contains('mangahosted') ||
        v.contains('mangahostz')) return 1;
    if (v.contains('unionmangas') || v.contains('unionleitor')) return 3;
    if (v.contains('wqscan')) return 4;
    if (v.contains('miradscanlator')) return 5;
    if (v.contains('muitomanga')) return 2;
    if (v.contains('easy-scan')) return 7;
    if (v.contains('vulcannovel')) return 8;
    if (v.contains('niadd') || v.contains('nineanime')) return 9;
    return 6;
  }
}
