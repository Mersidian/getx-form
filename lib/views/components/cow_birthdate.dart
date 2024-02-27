import 'package:flutter/material.dart';
import 'package:flutter_application/constants/form_const.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/main_controller.dart';

class BirthDate extends StatelessWidget {
  const BirthDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      child: GetBuilder<MainController>(
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                readOnly: true,
                controller: controller.datePickerController.textController,
                onTap: () => {
                  controller.datePickerController
                      .chooseDate(context, controller.datePickerController),
                },
                style: GoogleFonts.prompt(),
                decoration: InputDecoration(
                  labelText: labelCowBirth,
                  labelStyle: GoogleFonts.prompt(
                    textStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 2.0),
                  ),
                  suffixIcon: const Icon(Icons.arrow_drop_down_circle_outlined),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Obx(
                  () => Text(
                      "อายุ: ${controller.datePickerController.age.value}"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
