part of 'app_options.dart';

/// Documentation
/// Enums for appOptions:
///   error_view_option:
///     ErrorWidgetOptions.NONE --> No image, no Lottie
///     ErrorWidgetOptions.IMAGE --> Just image
///     ErrorWidgetOptions.LOTTIE --> Just Lottie
///
///   orientation:
///     OrientationOptions.PORTRAIT --> Just portrait
///     OrientationOptions.LANDSCAPE --> Just landscape
///     OrientationOptions.BOTH --> Both portrait and landscape
///

const _appOptions = {
  "orientation": OrientationOptions.BOTH,
  "error_view_option": ErrorWidgetOptions.LOTTIE,
  "change_lang_restart": true,
  "enable_dio_printing": true,
  "enable_error_catcher": true
};
