import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/first/screens/first_screen.dart';
import 'package:flutter_for_web/src/feature/second/screens/second_screen.dart';
import 'package:flutter_for_web/src/feature/third/screens/third_screen.dart';
import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';

class NavBarController extends BaseController {
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  onSelectIndex(int index) {
    _selectedIndex(index);
  }

  final List<Widget> screens = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
  ];
}
