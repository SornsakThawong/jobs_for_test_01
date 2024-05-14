import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/third/screens/third_screen.dart';

class ThirdScreenMD extends BaseThirdScreen {
  ThirdScreenMD({super.key});

  @override
  String get devices => "Tablet";

   @override
  Color get backgroundColor => Colors.blue;

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
