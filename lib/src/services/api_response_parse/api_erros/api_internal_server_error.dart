import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_error.dart';

class ApiInternalServerError implements ApiError {
  @override
  String message;
  ApiInternalServerError({
    required this.message,
  });
}
