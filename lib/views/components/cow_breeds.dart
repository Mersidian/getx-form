import 'package:flutter/material.dart';
import 'cow_breeds_button.dart';
import 'cow_breeds_text.dart';
import 'cow_breeds_percent.dart';

class CowBreeds extends StatelessWidget {
  const CowBreeds({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CowBreedsButton(),
        CowBreedsText(),
        CowBreedsPercent(),
      ],
    );
  }
}
