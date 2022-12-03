import 'package:buy_luck/core/errors/app_errors.dart';
import 'package:buy_luck/core/net/response_validators/response_validator.dart';

class DefaultResponseValidator extends ResponseValidator {
  @override
  void processData(dynamic data) {
    if (data.containsKey('statusCode') &&
        !(data["statusCode"].toString().startsWith('2'))) {
      error = AppErrors.customError(message: data["message"]);
      errorMessage = data["message"];
    }
  }
}
