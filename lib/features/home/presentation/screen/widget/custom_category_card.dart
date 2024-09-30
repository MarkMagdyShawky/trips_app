import 'package:flutter/material.dart';
import 'package:trips_app/core/functions/gradient_functions.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({super.key, required this.image, required this.catigoryName});
  final String image;
  final String catigoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
      child: Container(
        height: PageDimensions().pageHeight(context) / 4.2,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: kBlueColor.withOpacity(0.6), spreadRadius: 1, blurRadius: 20, offset: Offset(0, 2))
          ],
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          height: PageDimensions().pageHeight(context) / 4.2,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradientbackground([kBlueColor.withOpacity(0.7), kYellowColor2.withOpacity(0.7)]),
          ),
          child: Text(
            catigoryName,
            style: Styles.textStyle36,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
