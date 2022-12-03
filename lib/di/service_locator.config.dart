// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i41;
import 'package:shared_preferences/shared_preferences.dart' as _i44;

import '../core/common/style/text_styles.dart' as _i3;
import '../core/localization/localization_provider.dart' as _i46;
import '../core/navigation/navigation_service.dart' as _i43;
import '../core/navigation/route_generator.dart' as _i42;
import '../core/net/http_client.dart' as _i4;
import '../core/theme/theme_config.dart' as _i45;
import '../features/cart/data/datasource/cart_remote_datasource.dart' as _i6;
import '../features/cart/data/datasource/icart_remote_datasource.dart' as _i5;
import '../features/cart/data/repository/cart_repository.dart' as _i8;
import '../features/cart/domain/repository/icart_repository.dart' as _i7;
import '../features/category/data/datasource/category_remote_datasource.dart'
    as _i10;
import '../features/category/data/datasource/icategory_remote_datasource.dart'
    as _i9;
import '../features/category/data/repository/category_repository.dart' as _i12;
import '../features/category/domain/repository/icategory_repository.dart'
    as _i11;
import '../features/favorite/data/datasource/favorite_remote_datasource.dart'
    as _i14;
import '../features/favorite/data/datasource/ifavorite_remote_datasource.dart'
    as _i13;
import '../features/favorite/data/repository/favorite_repository.dart' as _i16;
import '../features/favorite/domain/repository/ifavorite_repository.dart'
    as _i15;
import '../features/home/data/datasource/home_remote_datasource.dart' as _i18;
import '../features/home/data/datasource/ihome_remote_datasource.dart' as _i17;
import '../features/home/data/repository/home_repository.dart' as _i20;
import '../features/home/domain/repository/ihome_repository.dart' as _i19;
import '../features/order/data/datasource/iorder_remote_datasource.dart'
    as _i21;
import '../features/order/data/datasource/order_remote_datasource.dart' as _i22;
import '../features/order/data/repository/order_repository.dart' as _i24;
import '../features/order/domain/repository/iorder_repository.dart' as _i23;
import '../features/product/data/datasource/iproduct_remote_datasource.dart'
    as _i25;
import '../features/product/data/datasource/product_remote_datasource.dart'
    as _i26;
import '../features/product/data/repository/product_repository.dart' as _i28;
import '../features/product/domain/repository/iproduct_repository.dart' as _i27;
import '../features/profile/data/datasource/iprofile_remote_datasource.dart'
    as _i29;
import '../features/profile/data/datasource/profile_remote_datasource.dart'
    as _i30;
import '../features/profile/data/repository/profile_repository.dart' as _i32;
import '../features/profile/domain/repository/iprofile_repository.dart' as _i31;
import '../features/upload/data/data_source/iupload_remote_datasource.dart'
    as _i33;
import '../features/upload/data/data_source/upload_remote_datasource.dart'
    as _i34;
import '../features/upload/data/repository/upload_repository.dart' as _i36;
import '../features/upload/domain/repository/iupload_repository.dart' as _i35;
import '../features/user_management/data/datasource/iuser_management_remote_datasource.dart'
    as _i37;
import '../features/user_management/data/datasource/user_management_remote_datasource.dart'
    as _i38;
import '../features/user_management/data/repository/user_management_repository.dart'
    as _i40;
import '../features/user_management/domain/repository/iuser_management_repository.dart'
    as _i39;
import 'modules/logger_module.dart' as _i47;
import 'modules/shared_preferences_module.dart'
    as _i48; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final facebookLoginModule = _$FacebookLoginModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.AppTextStyles>(() => _i3.AppTextStyles());
  gh.lazySingleton<_i4.HttpClient>(() => _i4.HttpClient());
  gh.factory<_i5.ICartRemoteDataSource>(() => _i6.CartRemoteDataSource());
  gh.factory<_i7.ICartRepository>(
      () => _i8.CartRepository(get<_i5.ICartRemoteDataSource>()));
  gh.factory<_i9.ICategoryRemoteDatasource>(
      () => _i10.CategoryRemoteDatasource());
  gh.factory<_i11.ICategoryRepository>(
      () => _i12.CategoryRepository(get<_i9.ICategoryRemoteDatasource>()));
  gh.factory<_i13.IFavoriteRemoteDatasource>(
      () => _i14.FavoriteRemoteDatasource());
  gh.factory<_i15.IFavoriteRepository>(
      () => _i16.FavoriteRepository(get<_i13.IFavoriteRemoteDatasource>()));
  gh.factory<_i17.IHomeRemoteDataSource>(() => _i18.HomeRemoteDataSource());
  gh.factory<_i19.IHomeRepository>(
      () => _i20.HomeRepository(get<_i17.IHomeRemoteDataSource>()));
  gh.factory<_i21.IOrderRemoteDataSource>(() => _i22.OrderRemoteDataSource());
  gh.factory<_i23.IOrderRepository>(
      () => _i24.OrderRepository(get<_i21.IOrderRemoteDataSource>()));
  gh.factory<_i25.IProductRemoteDatasource>(
      () => _i26.ProductRemoteDatasource());
  gh.factory<_i27.IProductRepository>(
      () => _i28.ProductRepository(get<_i25.IProductRemoteDatasource>()));
  gh.factory<_i29.IProfileRemoteDataSource>(
      () => _i30.ProfileRemoteDataSource());
  gh.factory<_i31.IProfileRepository>(
      () => _i32.ProfileRepository(get<_i29.IProfileRemoteDataSource>()));
  gh.factory<_i33.IUploadRemoteDataSource>(() => _i34.UploadRemoteDataSource());
  gh.factory<_i35.IUploadRepository>(
      () => _i36.UploadRepository(get<_i33.IUploadRemoteDataSource>()));
  gh.factory<_i37.IUserManagementRemoteDataSource>(
      () => _i38.UserManagementRemoteDataSource());
  gh.factory<_i39.IUserManagementRepository>(() =>
      _i40.UserManagementRepository(
          get<_i37.IUserManagementRemoteDataSource>()));
  gh.lazySingleton<_i41.Logger>(() => facebookLoginModule.facebookLogin);
  gh.lazySingleton<_i42.NavigationRoute>(() => _i42.NavigationRoute());
  gh.lazySingleton<_i43.NavigationService>(() => _i43.NavigationService());
  await gh.factoryAsync<_i44.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i45.ThemeConfig>(() => _i45.ThemeConfig());
  gh.singleton<_i46.LocalizationProvider>(_i46.LocalizationProvider());
  return get;
}

class _$FacebookLoginModule extends _i47.FacebookLoginModule {}

class _$SharedPreferencesModule extends _i48.SharedPreferencesModule {}
