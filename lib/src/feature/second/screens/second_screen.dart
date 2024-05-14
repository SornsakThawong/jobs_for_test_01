import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/core/base/base_stl_widget.dart';
import 'package:flutter_for_web/src/feature/second/screens/second_screen_lg.dart';
import 'package:flutter_for_web/src/feature/second/screens/second_screen_md.dart';
import 'package:flutter_for_web/src/feature/second/screens/second_screen_sm.dart';
import 'package:flutter_for_web/src/language/language_key.dart';
import 'package:flutter_for_web/src/language/language_widget.dart';
import 'package:get/get.dart';

import '../../../core/widgets/responsive_layout.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: SecondScreenSM(),
      tabletBody: SecondScreenMD(),
      desktopBody: SecondScreenLG(),
    );
  }
}

abstract class BaseSecondScreen extends BaseStlScreen {
  BaseSecondScreen({super.key});

  @protected
  final String devices = "";

  @protected
  final Color backgroundColor = Colors.green.shade100;

  @override
  String get title => LanguageKey.second.tr;

  @override
  Widget get body => Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                devices,
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 20,
              ),
              LanguageWidget()
            ],
          ),
        ),
      );
}
