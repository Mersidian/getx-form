import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/form_const.dart';
import '../../controllers/main_controller.dart';

class CowName extends StatelessWidget {
  const CowName({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
          child: TextFormField(
            onChanged: context.formController.setName,
            validator: (String? input) {
              if (input == null || input.isEmpty) {
                return 'กรุณาระบุชื่อลูกโค';
              }
              return null;
            },
            style: GoogleFonts.prompt(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            decoration: InputDecoration(
              labelText: labelCowName,
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
