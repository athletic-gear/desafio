import 'package:flutter/material.dart';

class AppColor {
  static AppColor? _instance;
  AppColor._();

  static AppColor get instance {
    _instance ??= AppColor._();
    return _instance!;
  }

  Color get primary => const Color(0xff550048);
  Color get secondary => const Color(0xffFFA144);
  Color get white => Colors.white;
  Color get verde => Colors.green;
  Color get grey => Colors.grey.shade600;
  Color get black => Colors.black;
}