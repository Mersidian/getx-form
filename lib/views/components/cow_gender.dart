import 'package:flutter/material.dart';
import '../../constants/form_const.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/main_controller.dart';

class CowGender extends StatelessWidget {
  const CowGender({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 375,
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    labelCowType,
                    style: GoogleFonts.prompt(
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          controller.formController.gender.value = false;
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              controller.formController.gender.value == false
                                  ? Colors.pinkAccent
                                  : Colors.grey[50],
                        ),
                        icon: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.female,
                            color: Colors.pinkAccent,
                            size: 30,
                          ),
                        ),
                        label: Text(
                          buttonFemale,
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: controller.formController.gender.value ==
                                      false
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton.icon(
                        onPressed: () {
                          controller.formController.gender.value = true;
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              controller.formController.gender.value == true
                                  ? Colors.lightBlue
                                  : Colors.grey[50],
                        ),
                        icon: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.male,
                            color: Colors.lightBlue,
                            size: 30,
                          ),
                        ),
                        label: Text(
                          buttonMale,
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color:
                                  controller.formController.gender.value == true
                                      ? Colors.white
                                      : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
