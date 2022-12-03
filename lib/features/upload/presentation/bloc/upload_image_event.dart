part of 'upload_image_bloc.dart';

abstract class UploadImageEvent extends Equatable {
  const UploadImageEvent();
}

class StartUploadImageEvent extends UploadImageEvent {
  final UploadParams params;

  StartUploadImageEvent({required this.params});
  @override
  List<Object> get props => [params];
}
