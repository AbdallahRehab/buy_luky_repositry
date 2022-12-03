import 'package:buy_luck/core/entities/base_entity.dart';

class CheckAppVersionUpdatesEntity extends BaseEntity {
  CheckAppVersionUpdatesEntity({
    required this.lastVersion,
    required this.appLink,
  });

  final int lastVersion;
  final String appLink;

  @override
  List<Object> get props => throw UnimplementedError();
}
