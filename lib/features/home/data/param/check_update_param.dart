import 'package:buy_luck/core/params/base_params.dart';

class CheckAppUpdatesParam extends BaseParams {
  final int deviceType;
  final String oldToken;
  final String newToken;

  CheckAppUpdatesParam({
    required this.deviceType,
    required this.oldToken,
    required this.newToken,
    cancelToken,
  }) : super(cancelToken: cancelToken);

  Map<String, dynamic> toMap() => {
        "deviceType": this.deviceType,
        "oldToken": this.oldToken,
        "newToken": this.newToken,
      };
}
