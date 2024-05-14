import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/language/language_controller.dart';
import 'package:get/get.dart';

import 'flavor/build_config.dart';
import 'flavor/env_config.dart';
import 'flavor/environment.dart';
import 'src/app.dart';

void main() async {
  EnvConfig devConfig = EnvConfig(
    appName: "Web Dev",
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  await Get.putAsync(() => LanguageController().init());
  runApp(App());
}
