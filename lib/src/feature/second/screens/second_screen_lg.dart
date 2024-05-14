import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/second/screens/second_screen.dart';

class SecondScreenLG extends BaseSecondScreen {
  SecondScreenLG({super.key});

  @override
  String get devices => "Desktop";

  @override
  Color get backgroundColor => Colors.green.shade800;

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
