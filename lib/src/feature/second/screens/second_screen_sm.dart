import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/second/screens/second_screen.dart';

class SecondScreenSM extends BaseSecondScreen {
  SecondScreenSM({super.key});

  @override
  String get devices => "Mobile";

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
