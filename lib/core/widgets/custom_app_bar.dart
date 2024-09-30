import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomAppBar {
  AppBar customAppBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: Styles.textStyle22.copyWith(fontWeight: FontWeight.w600),
      ),
      iconTheme: IconThemeData(size: 32),
      elevation: 0,
      backgroundColor: kWhiteColor,
      shadowColor: Colors.transparent,
      surfaceTintColor: kWhiteColor,
    );
  }
}
