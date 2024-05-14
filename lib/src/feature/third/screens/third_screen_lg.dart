import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/third/screens/third_screen.dart';

class ThirdScreenLG extends BaseThirdScreen {
  ThirdScreenLG({super.key});

  @override
  String get devices => "Desktop";

  @override
  Color get backgroundColor => Colors.blue.shade800;

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
