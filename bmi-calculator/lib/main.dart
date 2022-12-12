import 'package:bmi_calculator/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ControllerWidget());
}

class ControllerWidget extends StatelessWidget {
  const ControllerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
