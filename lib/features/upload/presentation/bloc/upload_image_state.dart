part of 'upload_image_bloc.dart';

abstract class UploadImageState extends Equatable {
  const UploadImageState();
}

class UploadImageInitial extends UploadImageState {
  @override
  List<Object> get props => [];
}

class UploadImageLoading extends UploadImageState {
  @override
  List<Object> get props => [];
}

class UploadImageSuccess extends UploadImageState {
  final UploadEntityData? data;

  const UploadImageSuccess({required this.data});

  @override
  List<Object> get props => [];
}

class UploadImageFailure extends UploadImageState {
  final AppErrors? error;
  final VoidCallback callback;

  UploadImageFailure({
    required this.error,
    required this.callback,
  });

  @override
  List<Object> get props => [callback];
}
