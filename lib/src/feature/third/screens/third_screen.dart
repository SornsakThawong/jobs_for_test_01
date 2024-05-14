import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/core/base/base_stl_widget.dart';
import 'package:flutter_for_web/src/feature/third/screens/third_screen_lg.dart';
import 'package:flutter_for_web/src/feature/third/screens/third_screen_md.dart';
import 'package:flutter_for_web/src/feature/third/screens/third_screen_sm.dart';
import 'package:flutter_for_web/src/language/language_key.dart';
import 'package:flutter_for_web/src/language/language_widget.dart';
import 'package:get/get.dart';

import '../../../core/widgets/responsive_layout.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: ThirdScreenSM(),
      tabletBody: ThirdScreenMD(),
      desktopBody: ThirdScreenLG(),
    );
  }
}

abstract class BaseThirdScreen extends BaseStlScreen {
  BaseThirdScreen({super.key});

  @protected
  final String devices = "";

  @protected
  final Color backgroundColor = Colors.blue.shade100;

  @override
  String get title => LanguageKey.third.tr;

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
