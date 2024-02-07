import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/upload_cow_image.dart';

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
          "แจ้งเกิดลูกโค",
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
      body: Column(
        children: [
          CowImage(),
        ],
      ),
    );
  }
}
