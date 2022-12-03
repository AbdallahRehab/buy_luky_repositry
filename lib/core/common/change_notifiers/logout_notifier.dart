import 'package:buy_luck/features/user_management/domain/usecase/logout_usecase.dart';
import 'package:flutter/cupertino.dart';

import '../../../di/service_locator.dart';
import '../../../features/user_management/domain/repository/iuser_management_repository.dart';
import '../../params/no_params.dart';

class LogoutNotifier extends ChangeNotifier {
  Future<bool> logOutFun() async {
    var logOutUsecase = LogoutUsecase(getIt<IUserManagementRepository>());

    var result = await logOutUsecase.call(NoParams());

    print('___________________________');
    // print(result.data!.message);
    // if (result.hasDataOnly && (result.data!.runtimeType == true)) {
    //   print('WWWWWWWW  ${result}');
    //   return true;
    // } else {
    //   print('DDDDDDDD  ${result}');
    //   return false;
    // }
    notifyListeners();
    return true;
  }
}
