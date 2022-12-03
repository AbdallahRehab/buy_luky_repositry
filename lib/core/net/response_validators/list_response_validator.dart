import 'package:buy_luck/core/errors/app_errors.dart';
import 'package:buy_luck/core/localization/custom_localization.dart';
import 'package:buy_luck/core/net/response_validators/response_validator.dart';

class ListResponseValidator extends ResponseValidator {
  @override
  void processData(dynamic data) {
    if (data is! List) {
      error =
          AppErrors.customError(message: CustomLocalization.notValidResponse);
      errorMessage = CustomLocalization.notValidResponse;
    }
  }
}
