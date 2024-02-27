import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import '../models/form_model.dart';

DateTime now = Cow().birthDate;

class DatePickerController extends GetxController {
  TextEditingController textController = TextEditingController();

  DateTime selectedDate = now;

  Rx<String> age = "0 วัน".obs;

  void selectDate(DateTime date) {
    selectedDate = date;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    String thMonth = DateFormat('MMMM', 'th').format(selectedDate);
    String thFormat = '${selectedDate.day} $thMonth ${selectedDate.year + 543}';
    textController.text = thFormat;
  }

  String getAge() {
    int years = now.year - selectedDate.year;
    int months = now.month - selectedDate.month;
    int days = now.day - selectedDate.day;

    if (months < 0 || (months == 0 && days < 0)) {
      years--;
      months += 12;
    }
    if (days < 0) {
      months--;
      //Last day of the previous month
      days += DateTime(now.year, now.month - 1, 0).day;
    }

    if (years == 0 && months == 0) {
      return "$days วัน";
    } else if (years == 0) {
      return "$months เดือน $days วัน";
    }

    return "$years ปี $months เดือน $days วัน";
  }

  Future<void> chooseDate(
      BuildContext context, DatePickerController controller) async {
    final DateTime? picked = await showRoundedDatePicker(
      context: context,
      initialDate: controller.selectedDate,
      firstDate: DateTime(2000),
      lastDate: now,
      locale: const Locale("th", "TH"),
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      styleDatePicker: MaterialRoundedDatePickerStyle(
        textStyleYearButton: const TextStyle(
          color: Colors.white,
          fontSize: 52,
        ),
        textStyleDayButton: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
        decorationDateSelected: const BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.circle,
        ),
        textStyleButtonNegative: GoogleFonts.prompt(
          textStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 24,
          ),
        ),
        textStyleButtonPositive: GoogleFonts.prompt(
          textStyle: const TextStyle(
            color: Colors.pink,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      styleYearPicker: MaterialRoundedYearPickerStyle(
        textStyleYearSelected: const TextStyle(
          color: Colors.pink,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      era: EraMode.BUDDHIST_YEAR,
    );

    if (picked != null) {
      controller.selectDate(picked);
      age.value = getAge();
      //Send datetime to form controller
      // formBirthDate.setBirthDate(picked);
      
      String thMonth = DateFormat('MMMM', 'th').format(picked);
      String thFormat = '${picked.day} $thMonth ${picked.year + 543}';
      textController.text = thFormat;

      // textController.text = DateFormat('dd MMMM yyyy').format(controller.selectedDate);
    }
  }
}
