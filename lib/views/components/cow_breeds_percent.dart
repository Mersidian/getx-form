import 'package:flutter/material.dart';
import 'package:flutter_application/constants/form_const.dart';
import 'package:google_fonts/google_fonts.dart';

class CowBreedsPercent extends StatelessWidget {
  const CowBreedsPercent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(12, 0, 12, 25),
          child: Divider(
            height: 1,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.info_outline_rounded,
                      color: Colors.pinkAccent,
                    ),
                    Text(
                      "  ข้อมูลสายพันธุ์",
                      style: GoogleFonts.prompt(
                        textStyle: const TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "100.0",
                    style: GoogleFonts.prompt(
                      textStyle: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        labelPercent,
                        style: GoogleFonts.prompt(
                          textStyle: const TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
