import 'package:flutter/material.dart';
//utils
import 'app_color.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: AppColor.instance.primary,
      scaffoldBackgroundColor: AppColor.instance.white,
      appBarTheme: AppBarTheme(
        color: AppColor.instance.primary,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.normal,
          color: AppColor.instance.white,
        ),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: AppColor.instance.primary,
        ),
        titleSmall:  TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: AppColor.instance.grey,
        ),

      ),

      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: AppColor.instance.grey,
          fontSize: 16,
        ),
        hintStyle: TextStyle(
          color: AppColor.instance.grey,
          fontSize: 16,
        ),
        helperStyle:  TextStyle(
          color: AppColor.instance.grey,
          fontSize: 16,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 20.0,
        ),
        isDense: true,
        fillColor: AppColor.instance.white,
     
        focusColor: AppColor.instance.white,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColor.instance.primary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.5,
            color: AppColor.instance.primary,
          ),
        ),
      ),
    );
  }
}
