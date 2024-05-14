import 'package:get/get.dart';

class LanguageLocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'th_TH': th,
        'en_US': en,
      };
  Map<String, String> th = {
    'first': 'หน้าแรก',
    'second': 'หน้าสอง',
    'third': 'หน้าสาม',
  };
  Map<String, String> en = {
    'first': 'First',
    'second': 'Second',
    'third': 'Third',
  };
}
