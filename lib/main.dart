import 'package:flutter/material.dart';
import 'views/main_view.dart';

void main() {
  runApp(GetXForm());
}

class GetXForm extends StatelessWidget {
  const GetXForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GetX Form",
      theme: ThemeData(
        primarySwatch: Colors.pink
        ),
      home: const MainView(),
    );
  }
}