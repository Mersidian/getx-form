import 'package:get/get.dart';
import 'form_controller.dart';
import 'image_controller.dart';
import 'date_controller.dart';

class MainController extends GetxController {
  FormController formController = Get.put(FormController());

  ImageController imageController = Get.put(ImageController());

  DatePickerController datePickerController = Get.put(DatePickerController());
}
