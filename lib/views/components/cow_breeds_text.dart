import 'package:flutter/material.dart';
import 'package:flutter_application/constants/form_const.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/main_controller.dart';

class CowBreedsText extends StatelessWidget {
  const CowBreedsText({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Obx(
          () {
            return Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 25),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "ไม่ทราบสายพันธุ์",
                                  style: GoogleFonts.prompt(
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -10,
                          left: 8,
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 3,
                            ),
                            child: Text(
                              labelBreeds,
                              style: GoogleFonts.prompt(
                                textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: double.infinity,
                          height: controller.formController.breeds.value == 0 ? 80 : 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: controller.formController.breeds.value == 0
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "100",
                                      style: GoogleFonts.prompt(
                                        textStyle:
                                            const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text("+"),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "0",
                                          style: GoogleFonts.prompt(
                                            textStyle:
                                                const TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        const SizedBox(
                                            width: 40,
                                            child: Divider(
                                              color: Colors.black,
                                              thickness: 1,
                                              height: 1,
                                            )),
                                        Text(
                                          "512",
                                          style: GoogleFonts.prompt(
                                            textStyle:
                                                const TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "100.00 %",
                                        style: GoogleFonts.prompt(
                                          textStyle:
                                              const TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                        Positioned(
                          top: -10,
                          left: 7,
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 3,
                            ),
                            child: controller.formController.breeds.value == 0
                                ? Text(
                                    "%สายเลือด",
                                    style: GoogleFonts.prompt(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    ),
                                  )
                                : Text(
                                    "สัดส่วน",
                                    style: GoogleFonts.prompt(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
