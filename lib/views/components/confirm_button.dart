import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cool_alert/cool_alert.dart';
import 'form_body.dart';
import '../../controllers/main_controller.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GetBuilder<MainController>(
        builder: (value) {
          return Center(
            child: SizedBox(
              width: 700,
              height: 50,
              child: Material(
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () => {
                    if (formKey.currentState!.validate())
                      {
                        value.formController.submitForm(),
                        CoolAlert.show(
                          context: context,
                          title: "สำเร็จ",
                          backgroundColor: Colors.greenAccent,
                          type: CoolAlertType.success,
                          confirmBtnColor: Colors.green,
                        ),
                      }
                    else
                      {
                        CoolAlert.show(
                          context: context,
                          title: "กรุณากรอกข้อมูลให้ครบถ้วน",
                          backgroundColor: Colors.lightBlue,
                          type: CoolAlertType.info,
                          confirmBtnColor: Colors.blue,
                        ),
                      },
                  },
                  child: Center(
                    child: Text(
                      'ถัดไป',
                      style: GoogleFonts.prompt(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
