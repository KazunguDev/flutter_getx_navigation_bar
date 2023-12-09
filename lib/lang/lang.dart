import 'package:get/get.dart';
import 'package:flutter_getx_navigation_bar/lang/en.dart';
import 'package:flutter_getx_navigation_bar/lang/tr.dart';

class Lang extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'tr_TR': turkish(),
        'en_US': english(),
      };
}
