import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

//Upload image
class ImageController extends GetxController{
  Rx<String> selectedImage = "".obs;

  Future pickImageFromGallery() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    
    if (returnedImage != null) {
      selectedImage.value = returnedImage.path;
      update();
    }
  }

  Future pickImageFromCamera() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    
    if (returnedImage != null) {
      selectedImage.value = returnedImage.path;
      update();
    }
  }

  void resetImage() {
    selectedImage.value = "";
    update();
  }
}