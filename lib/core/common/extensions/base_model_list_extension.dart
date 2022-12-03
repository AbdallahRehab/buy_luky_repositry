import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/core/models/base_model.dart';

extension BaseModelList<K extends BaseModel> on List<K> {
  /// Convert list of model to list of entity
  /// this extension used in model classes in [toEntity] method
  List<T> toListEntity<T extends BaseEntity>() {
    return map((e) => e.toEntity() as T).toList();
  }
}
