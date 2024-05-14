import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/first/screens/first_screen.dart';

class FirstScreenLG extends BaseFirstScreen {
  FirstScreenLG({super.key});

  @override
  String get devices => "Desktop";

  @override
  Color get backgroundColor => Colors.amber.shade800;

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
