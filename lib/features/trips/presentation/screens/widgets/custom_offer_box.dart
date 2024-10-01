import 'package:flutter/material.dart';
import 'package:trips_app/core/functions/gradient_functions.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomOfferBox extends StatelessWidget {
  const CustomOfferBox({
    super.key,
    required this.offer,
  });
  final int offer;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        gradient: LinerHorizontalGradientBackGround([kBlueColor.withOpacity(0.7), kYellowColor2]),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(style: Styles.textStyle22, children: <TextSpan>[
              TextSpan(
                text: 'For Limited Time',
                style: Styles.textStyle22.copyWith(fontFamily: 'bangers'),
              ),
              TextSpan(
                  text: ' -$offer% ',
                  style: Styles.textStyle22.copyWith(color: kRedColor, fontFamily: 'bangers')),
              TextSpan(
                text: ' Offer ',
                style: Styles.textStyle22.copyWith(fontFamily: 'bangers'),
              ),
            ]),
          ),
          Image(
            image: AssetImage(ImageManager.kGiftIcon),
            width: 30,
            height: 30,
          )
        ],
      ),
    );
  }
}
