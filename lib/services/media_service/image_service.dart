import 'package:image_picker/image_picker.dart';

/// This a service that allows you to be able to pick images or videos from your device
/// to use this service just declare as a locator in your viewmodel:  final _mediaService = locator<MediaService>.

class ImageService {
  final ImagePicker _picker = ImagePicker();

  /// This method will be used to fetch a single image
  Future<XFile?> getImage(bool fromGallery, bool fromRear) {
    return _picker.pickImage(
        source: fromGallery ? ImageSource.gallery : ImageSource.camera,
        preferredCameraDevice: fromRear ? CameraDevice.rear : CameraDevice.front
        );
  }

  /// This method will be used to pick multi Images
  Future<List<XFile>> getImages() {
    return _picker.pickMultiImage();
  }

  /// This method will be used to pick video
  Future<XFile?> getVideo(bool fromGallery, bool fromRear) {
    return _picker.pickVideo(
        source: fromGallery ? ImageSource.gallery : ImageSource.camera,
        preferredCameraDevice: fromRear ? CameraDevice.rear : CameraDevice.front
        );
  }
}
