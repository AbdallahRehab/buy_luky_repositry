import 'package:flutter/cupertino.dart';

import '../../../di/service_locator.dart';
import '../../../features/home/data/param/coupons_params.dart';
import '../../../features/home/domain/entity/coupons_entity.dart';
import '../../../features/home/domain/repository/ihome_repository.dart';
import '../../../features/home/domain/usecase/coupons_usecase.dart';
import '../../params/no_params.dart';

class CouponsNotifier extends ChangeNotifier {
  CouponsEntity couponsEntity = CouponsEntity(data: [], statusCode: "");

  getCouponsFun({required String productId}) async {
    var couponsUseCase = CouponsUseCase(getIt<IHomeRepository>());

    var result = await couponsUseCase.call(CouponsParams(productId: productId));

    print('___________________________');
    print(result.data!);
    if (result.hasDataOnly) {
      print('WWWWWWWW  ${result}');
      // return true;
      couponsEntity = result.data!;
    } else {
      print('DDDDDDDD  ${result}');
      // return false;
    }
    notifyListeners();
  }
}
