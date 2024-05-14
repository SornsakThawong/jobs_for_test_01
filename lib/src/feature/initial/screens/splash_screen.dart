import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/feature/initial/controllers/initial_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final ctrl = Get.put(InitialController());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
