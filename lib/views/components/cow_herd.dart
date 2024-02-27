import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/form_const.dart';
import '../../controllers/main_controller.dart';

class CowHerd extends StatelessWidget {
  const CowHerd({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: TextFormField(
            readOnly: true,
            controller: controller.formController.herdController,
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
                          'ฝูงโคสาว',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.herdController.text = 'ฝูงโคสาว';
                          controller.formController.setHerd('ฝูงโคสาว');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'ฝูงลูกโค',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.herdController.text = 'ฝูงลูกโค';
                          controller.formController.setHerd('ฝูงลูกโค');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'ฝูงพ่อโค',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.herdController.text = 'ฝูงพ่อโค';
                          controller.formController.setHerd('ฝูงพ่อโค');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'ฝูงโค 1',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.herdController.text = 'ฝูงโค 1';
                          controller.formController.setHerd('ฝูงโค 1');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'ฝูงโค 2',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.herdController.text = 'ฝูงโค 2';
                          controller.formController.setHerd('ฝูงโค 2');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'ฝูงโค 3',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.herdController.text = 'ฝูงโค 3';
                          controller.formController.setHerd('ฝูงโค 3');
                        },
                      ),
                    ],
                  );
                },
              ),
            },
            style: GoogleFonts.prompt(),
            decoration: InputDecoration(
              labelText: labelHerd,
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