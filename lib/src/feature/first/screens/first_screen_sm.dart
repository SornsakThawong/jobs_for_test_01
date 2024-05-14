import 'package:flutter/material.dart';

import 'first_screen.dart';

class FirstScreenSM extends BaseFirstScreen {
  FirstScreenSM({super.key});

  @override
  String get devices => "Mobile";

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}
