import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

//Upload image
class PickImage extends GetxController{
  File ? selectedImage;

  Future pickImageFromGallery() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    
    if (returnedImage != null) {
      selectedImage = File(returnedImage.path);
      update();
    }
  }

  Future pickImageFromCamera() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    
    if (returnedImage != null) {
      selectedImage = File(returnedImage.path);
      update();
    }
  }

  void resetImage() {
    selectedImage = null;
    update();
  }
}