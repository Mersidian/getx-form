import 'package:flutter/material.dart';
import 'package:flutter_application/constants/form_const.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/main_controller.dart';

class CowId extends StatelessWidget {
  const CowId({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 5, 12, 9),
          child: Column(
            children: [
              SizedBox(
                width: 600,
                height: 70,
                child: Material(
                    color: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: InkWell(
                      onTap: () => {
                        context.formController.toggleButton(),
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "เบอร์โคเพิ่มเติม",
                                style: GoogleFonts.prompt(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              context.formController.isExpanded.value
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Obx(
                () => Visibility(
                  visible: context.formController.isExpanded.value,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 3),
                        child: TextFormField(
                          onChanged: context.formController.setNid,
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          decoration: InputDecoration(
                            labelText: labelNid,
                            labelStyle: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.pinkAccent, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                        child: TextFormField(
                          onChanged: context.formController.setRfid,
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          decoration: InputDecoration(
                            labelText: labelRfid,
                            labelStyle: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.pinkAccent, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 0, 8),
                        child: TextFormField(
                          onChanged: context.formController.setDpo,
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          decoration: InputDecoration(
                            labelText: labelDpo,
                            labelStyle: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.pinkAccent, width: 2.0),
                            ),
                          ),
                          enabled: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
