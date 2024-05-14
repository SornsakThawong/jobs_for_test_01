import 'package:flutter/material.dart';
import 'package:flutter_for_web/src/core/widgets/on_hover_widget.dart';
import 'package:flutter_for_web/src/language/language_controller.dart';
import 'package:get/get.dart';

class LanguageWidget extends StatelessWidget {
  LanguageWidget({super.key});
  final _ctrl = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButtonHideUnderline(
        child: DropdownButton(
          padding: EdgeInsets.zero,
          hint: Row(
            children: [
              Text(
                _ctrl.getFlag(_ctrl.locale.languageCode),
                style: const TextStyle(fontSize: 28),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                _ctrl.locale.languageCode.toUpperCase(),
                style: const TextStyle(fontSize: 28),
              ),
            ],
          ),
          items: _ctrl.all.map(
            (e) {
              final flag = _ctrl.getFlag(e.languageCode);

              return DropdownMenuItem(
                value: e,
                child: OnHoverWidget(
                  builder: (isHovered) {
                    Color color = isHovered ? Colors.green : Colors.transparent;
                    bool isCurrentLanguage =
                        e.countryCode == _ctrl.locale.countryCode;
                    return Container(
                      color: color,
                      child: Row(
                        children: [
                          Text(flag),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            e.languageCode.toUpperCase(),
                            style: const TextStyle(fontSize: 28),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          if (isCurrentLanguage) const Icon(Icons.check)
                        ],
                      ),
                    );
                  },
                ),
                onTap: () {
                  _ctrl.setLocal(e);
                  // language!.setLanguage(e.languageCode);
                },
              );
            },
          ).toList(),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
