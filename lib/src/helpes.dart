import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

class Helps {
  static String formetDateFromTimestap(int time) {
    if (time.toString().length == 10) time *= 1000;
    return DateFormat(null, 'pt_Br').format(
      DateTime.fromMillisecondsSinceEpoch(
        time,
      ),
    );
  }

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

  // Função responsável por converter um título de manga em um identificador único
  // Removemos termos específicos, convertemos para letras minúsculas e removemos caracteres especiais
  static String convertUniqueid(String titleManga) {
    // Lista de termos a serem removidos do título do manga
    final termos = [
      '(br)',
      '(color)',
      'pt-br',
      '(novel)',
    ];

    // Converter o título do manga para letras minúsculas
    titleManga = titleManga.toLowerCase();

    // Remover termos específicos do título do manga
    for (var item in termos) {
      titleManga = titleManga.replaceAll(item, '');
    }

    // Remover caracteres especiais do título do manga
    return titleManga.replaceAll(RegExp('[^A-Za-z0-9]'), '');
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
    if (v.contains('goldenmangas')) return 10;
    return 6;
  }

  static List<String> convertStringToList(data) {
    if (data is String) {
      data = data.replaceFirst('[', '');
      data = data.replaceFirst(']', '');
      data = data.replaceAll('"', '');
      return data.split(',').map((e) => e.toString().trim()).toList();
    }
    if (data == null) {
      return [];
    }
    if (data.runtimeType.toString() == 'Blob') {
      return data.toString().split(',');
    }
    return data.map<String>((e) => e.toString().trim()).toList();
  }
}
