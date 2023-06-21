import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_forbidden_error.dart';
import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_unauthenticated_error.dart';
import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_unknown_error.dart';
import 'package:manga_easy_sdk/src/services/api_response_parse/result_entity.dart';

class ApiResponseParser {
  ResultEntity handleResponse({
    required int statusCode,
    required Map<String, dynamic> response,
  }) {
    _handleError(statusCode);
    final result = ResultEntity.fromJson(response);

    if (result.status == 'ERROR') {
      throw Exception(result.message);
    }
    return result;
  }

  void _handleError(int statusCode) {
    switch (statusCode) {
      case 401:
        throw ApiUnauthenticatedError();
      case 403:
        throw ApiForbiddenError();
      case 0:
      case 500:
        throw ApiUnknownError();
    }
  }
}
