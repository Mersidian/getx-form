import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application/constants/form_const.dart';
import '../../controllers/main_controller.dart';

class CowStatus extends StatelessWidget {
  const CowStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: TextFormField(
            readOnly: true,
            controller: controller.formController.statusController,
            onTap: () => {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(0.0)),
                ),
                context: context,
                builder: (BuildContext context) {
                  return Wrap(
                    children: [
                      ListTile(
                        title: Text(
                          'ลูกโค',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.statusController.text = 'ลูกโค';
                          controller.formController.setStatus('ลูกโค');
                        },
                      ),
                    ],
                  );
                },
              ),
            },
            style: GoogleFonts.prompt(),
            decoration: InputDecoration(
              labelText: labelCowStatus,
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
              suffixIcon: const Icon(Icons.arrow_drop_down_circle_outlined),
            ),
          ),
        );
      },
    );
  }
}
