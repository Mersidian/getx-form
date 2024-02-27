import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/form_const.dart';
import '../../controllers/main_controller.dart';

class ParentCow extends StatelessWidget {
  const ParentCow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 2),
              child: TextFormField(
                onChanged: context.formController.setMother,
                validator: (String? input) {
                  if (input == null || input.isEmpty) {
                    return 'กรุณาระบุแม่โคที่คลอด';
                  }
                  return null;
                },
                style: GoogleFonts.prompt(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                decoration: InputDecoration(
                  labelText: labelMother,
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 7, 12, 12),
              child: TextFormField(
                onChanged: context.formController.setFather,
                validator: (String? input) {
                  if (input == null || input.isEmpty) {
                    return 'กรุณาระบุพ่อพันธุ์/น้ำเชื้อ';
                  }
                  return null;
                },
                style: GoogleFonts.prompt(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                decoration: InputDecoration(
                  labelText: labelFather,
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
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
