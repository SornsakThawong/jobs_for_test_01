import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/third/screens/third_screen.dart';

class ThirdScreenSM extends BaseThirdScreen {
  ThirdScreenSM({super.key});

  @override
  String get devices => "Mobile";

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
