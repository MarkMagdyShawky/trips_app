import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomAppBar {
  AppBar customAppBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: Styles.textStyle24.copyWith(fontFamily: 'Bangers'),
      ),
      iconTheme: IconThemeData(size: 32, color: kBlackColor, weight: 0.6),
      elevation: 0,
      backgroundColor: kWhiteColor,
      shadowColor: Colors.transparent,
      surfaceTintColor: kWhiteColor,
    );
  }
}
