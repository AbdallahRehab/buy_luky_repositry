import 'package:buy_luck/core/errors/app_errors.dart';
import 'package:buy_luck/core/net/response_validators/response_validator.dart';

class TestResponseValidator extends ResponseValidator {
  @override
  void processData(dynamic data) {
    if (data["message"].toString().contains("Fail")) {
      error = AppErrors.customError(message: data["message"]);
      errorMessage = data["message"];
    }
  }
}
