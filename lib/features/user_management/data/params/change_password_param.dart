import 'package:buy_luck/core/params/base_params.dart';

class ChangePasswordParam extends BaseParams {
  final String oldPassword, newPassword;

  ChangePasswordParam(
      {required this.oldPassword, required this.newPassword, cancelToken})
      : super(cancelToken: cancelToken);

  Map<String, dynamic> toMap() => {
        if (this.oldPassword != null) 'oldPassword': this.oldPassword,
        if (this.newPassword != null) 'newPassword': this.newPassword,
      };
}
