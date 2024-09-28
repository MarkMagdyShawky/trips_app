import 'package:flutter/material.dart';
import 'package:trips_app/core/functions/gradient_functions.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearCenterGradientbackground([kWhiteColor, kBlueColor]),
      ),
    );
  }
}
