import 'package:flutter/material.dart';
import 'package:flutter_for_web/flavor/build_config.dart';

abstract class BaseStlScreen extends StatelessWidget {
  BaseStlScreen({super.key});

  @protected
  final String title = "";

  @protected
  final Widget body = const SizedBox();

  final String appName = BuildConfig.instance.config.appName;

  @protected
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$appName : $title",
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      body: body,
    );
  }
}
