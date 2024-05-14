import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/core/base/base_stl_widget.dart';
import 'package:flutter_for_web/src/core/widgets/responsive_layout.dart';
import 'package:flutter_for_web/src/feature/first/screens/first_screen_lg.dart';
import 'package:flutter_for_web/src/feature/first/screens/first_screen_md.dart';
import 'package:flutter_for_web/src/feature/first/screens/first_screen_sm.dart';
import 'package:flutter_for_web/src/language/language_key.dart';
import 'package:get/get.dart';

import '../../../language/language_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: FirstScreenSM(),
      tabletBody: FirstScreenMD(),
      desktopBody: FirstScreenLG(),
    );
  }
}

abstract class BaseFirstScreen extends BaseStlScreen {
  BaseFirstScreen({super.key});

  @protected
  final String devices = "";

  @protected
  final Color backgroundColor = Colors.amber.shade100;

  @override
  String get title => LanguageKey.first.tr;

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
