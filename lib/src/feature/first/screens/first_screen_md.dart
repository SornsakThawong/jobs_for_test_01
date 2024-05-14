import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/first/screens/first_screen.dart';

class FirstScreenMD extends BaseFirstScreen {
  FirstScreenMD({super.key});

  @override
  String get devices => "Tablet";

  @override
  Color get backgroundColor => Colors.amber;

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
