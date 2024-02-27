import 'package:flutter/material.dart';
import 'package:flutter_application/views/components/form_body.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/form_const.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
          size: 40,
        ),
        title: Text(
          titleBar,
          style: GoogleFonts.prompt(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Colors.pink,
        toolbarHeight: 70,
      ),
      body: const FormBody(),
    );
  }
}
