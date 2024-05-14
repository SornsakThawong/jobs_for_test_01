import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/second/screens/second_screen.dart';

class SecondScreenMD extends BaseSecondScreen {
  SecondScreenMD({super.key});

  @override
  String get devices => "Tablet";

  @override
  Color get backgroundColor => Colors.green;

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
