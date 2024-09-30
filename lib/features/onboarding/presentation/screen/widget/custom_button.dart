import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trips_app/core/functions/gradient_functions.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/core/resources/styles.dart';
import 'package:trips_app/core/utils/app_router.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: PageDimensions().pageWidth(context),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: kBlackColor.withOpacity(0.3), blurRadius: 10, spreadRadius: 1)],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: kWhiteColor.withOpacity(0.3)),
        gradient: LinerHorizontalGradientBackGround([kBlueColor, kYellowColor]),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        splashColor: kYellowColor,
        hoverColor: kBlueColor,
        onPressed: () {
          GoRouter.of(context).push(RoutesNames.kHomeView);
        },
        child: Text(
          'Let\'s Go',
          style: Styles.textStyle22.copyWith(fontFamily: 'Bangers'),
        ),
      ),
    );
  }
}
