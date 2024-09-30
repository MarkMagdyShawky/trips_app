import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomPriceWidget extends StatelessWidget {
  const CustomPriceWidget({
    super.key,
    required this.oldPrice,
    required this.currentPrice,
  });
  final double oldPrice;
  final double currentPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
      decoration: BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      child: Row(
        children: [
          Text(
            '$oldPrice\$',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w600,
              color: kWhiteColor2,
              decoration: TextDecoration.lineThrough,
              decorationColor: kWhiteColor2,
              decorationThickness: 2,
            ),
          ),
          SizedBox(width: 10),
          Text(
            '$currentPrice\$',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600, color: kWhiteColor),
          ),
        ],
      ),
    );
  }
}
