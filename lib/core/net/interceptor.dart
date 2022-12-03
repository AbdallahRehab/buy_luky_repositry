import 'package:dio/dio.dart';

import '../../features/user_management/data/repository/user_management_repository.dart';
import '../constants/app/app_constants.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (await UserManagementRepository.hasToken) {
      final token = await UserManagementRepository.authToken;
      options.headers.putIfAbsent(
          HEADER_AUTH,
          () => 'Bearer '
              '$token');
    }
    return super.onRequest(options, handler);
  }
}
