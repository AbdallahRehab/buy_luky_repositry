import 'package:flutter/cupertino.dart';

import '../../../di/service_locator.dart';
import '../../../features/profile/domain/entity/privacy_entity.dart';
import '../../../features/profile/domain/entity/terms_entity.dart';
import '../../../features/profile/domain/repository/iprofile_repository.dart';
import '../../../features/profile/domain/usecase/privacy_usecase.dart';
import '../../../features/profile/domain/usecase/terms_usecase.dart';
import '../../params/no_params.dart';

class PrivacyAndTermsNotifier extends ChangeNotifier {
  // PrivacyEntity privacyEntity = PrivacyEntity(data: DataEntity(title: '',description: ), statusCode: "",message: '');
  PrivacyEntity? privacyEntity;
  TermsEntity? termsEntity;

  getPrivacyFun() async {
    var privacyUseCase = PrivacyUseCase(getIt<IProfileRepository>());

    var result = await privacyUseCase.call(NoParams());

    print('___________________________');
    print(result.data!);
    if (result.hasDataOnly) {
      print('WWWWWWWW  ${result.data!.data.description}');
      // return true;
      privacyEntity = result.data!;
    } else {
      print('DDDDDDDD  ${result}');
      // return false;
    }
    notifyListeners();
  }

  getTermsFun() async {
    var termsUseCase = TermsUseCase(getIt<IProfileRepository>());

    var result = await termsUseCase.call(NoParams());

    print('___________________________');
    print(result.data!);
    if (result.hasDataOnly) {
      print('WWWWWWWW  ${result.data!.data.description}');
      // return true;
      termsEntity = result.data!;
    } else {
      print('DDDDDDDD  ${result}');
      // return false;
    }
    notifyListeners();
  }
}
