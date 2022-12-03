/// Validators that be used to validate that the value is coming is true and -
/// the same value type we waiting for
/// The main use in Model classes to validate types of data which are coming -
/// from API

T? numV<T extends num>(Object? value) {
  if (value == null) return null;
  if (value is T) return value;
  if (value is String) return (num.tryParse(value) as T?);
  return null;
}

String? stringV(Object? value) {
  if (value == null) return null;
  return value.toString();
}

bool boolV(Object? value) {
  if (value == null) return false;
  if (value is String) {
    if (value == "true") return true;
  }
  if (value is num) {
    if (value == 1) return true;
  }
  if (value is bool) return value;
  return false;
}

List<T> listV<T>(List<T?>? list) {
  if (list == null) return [];

  return list.whereType<T>().toList();
}
