import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/form_const.dart';
import '../../controllers/main_controller.dart';

class CowShed extends StatelessWidget {
  const CowShed({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 30, 12, 2),
          child: TextFormField(
            readOnly: true,
            controller: controller.formController.shedController,
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
                          'โรงเรือนผสม',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.shedController.text = 'โรงเรือนผสม';
                          controller.formController.setCowshed('โรงเรือนผสม');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'โรงเรือนสาว',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.shedController.text = 'โรงเรือนสาว';
                          controller.formController.setCowshed('โรงเรือนสาว');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'โรงเรือน 1',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.shedController.text = 'โรงเรือน 1';
                          controller.formController.setCowshed('โรงเรือน 1');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'โรงเรือน 2',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.shedController.text = 'โรงเรือน 2';
                          controller.formController.setCowshed('โรงเรือน 2');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'โรงเรือน 3',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.shedController.text = 'โรงเรือน 3';
                          controller.formController.setCowshed('โรงเรือน 3');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'พ่อโค',
                          style: GoogleFonts.prompt(),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          controller.formController.shedController.text = 'พ่อโค';
                          controller.formController.setCowshed('พ่อโค');
                        },
                      ),
                    ],
                  );
                },
              ),
            },
            style: GoogleFonts.prompt(),
            decoration: InputDecoration(
              labelText: labelCowshed,
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
