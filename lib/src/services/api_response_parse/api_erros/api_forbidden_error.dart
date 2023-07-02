import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_error.dart';

class ApiForbiddenError implements ApiError {
  @override
  String message = 'Acesso negado';
}
