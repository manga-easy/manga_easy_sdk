import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_error_business.dart';
import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_forbidden_error.dart';
import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_internal_server_error.dart';
import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_unauthenticated_error.dart';
import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_unknown_error.dart';
import 'package:manga_easy_sdk/src/services/api_response_parse/result_entity.dart';

class ApiResponseParser {
  ResultEntity handleResponse({
    required int statusCode,
    required Map<String, dynamic> response,
  }) {
    _handleError(statusCode, response);
    final result = ResultEntity.fromJson(response);

    if (result.status == 'ERROR') {
      throw ApiErrorBusiness(message: result.message);
    }
    return result;
  }

  void _handleError(int statusCode, Map<String, dynamic> response) {
    switch (statusCode) {
      case 401:
        throw ApiUnauthenticatedError();
      case 403:
        throw ApiForbiddenError();
      case 500:
        throw ApiInternalServerError(message: response.toString());
      case 0:
        throw ApiUnknownError();
    }
  }
}
