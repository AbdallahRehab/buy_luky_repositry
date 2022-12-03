import 'package:flutter/cupertino.dart';

class UploadImageChangeNotifier extends ChangeNotifier {
  String? _uploadPercentageStr;
  num? _uploadPercentage;

  get getUploadPercentage => _uploadPercentageStr ?? '';
  setUploadPercentage({required num newVal}) {
    _uploadPercentage = newVal;
    _uploadPercentageStr = '${newVal.toStringAsFixed(0)}%';
    notifyListeners();
  }

  get getUploadPercentageNum => _uploadPercentage ?? 0;
}
