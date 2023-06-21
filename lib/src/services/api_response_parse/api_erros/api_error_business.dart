import 'package:manga_easy_sdk/src/services/api_response_parse/api_erros/api_error.dart';

class ApiErrorBusiness extends ApiError {
  @override
  String message;
  ApiErrorBusiness({
    required this.message,
  });
}
