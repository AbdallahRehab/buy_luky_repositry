import '../../../../core/entities/base_entity.dart';


class TermsEntity extends BaseEntity {
  TermsEntity({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  DataEntity data;
  String message;
  String statusCode;

  @override
  List<Object> get props =>
      [
        this.statusCode,
        this.data,
        this.message,
      ];
}

class DataEntity extends BaseEntity {
  DataEntity({
    required this.title,
    required this.description,
  });

  String title;
  String description;

  @override
  List<Object> get props => [
    this.title,
    this.description,
  ];

}
