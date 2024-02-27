import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/form_const.dart';
import '../../controllers/main_controller.dart';

class CowNumber extends StatelessWidget {
  const CowNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 2),
          child: TextFormField(
            onChanged: context.formController.setCowNumber,
            validator: (String? input) {
              if (input == null || input.isEmpty) {
                return 'กรุณาระบุเบอร์ลูกโค';
              }
              return null;
            },
            style: GoogleFonts.prompt(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            decoration: InputDecoration(
              labelText: labelCowNumber,
              labelStyle: GoogleFonts.prompt(
                textStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              border: const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent, width: 2.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
