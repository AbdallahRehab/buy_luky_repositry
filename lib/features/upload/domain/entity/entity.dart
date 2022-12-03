import 'package:buy_luck/core/entities/base_entity.dart';

class UploadEntity extends BaseEntity {
  final UploadEntityData? data;

  UploadEntity({required this.data});

  @override
  List<Object> get props => [];
}

class UploadEntityData extends BaseEntity {
  final String url;

  UploadEntityData({required this.url});

  @override
  List<Object> get props => [url];
}
