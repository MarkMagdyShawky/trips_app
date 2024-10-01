import 'package:flutter/material.dart';
import 'package:trips_app/core/functions/gradient_functions.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/styles.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/old_price_widget.dart';

class CustomTipeDetailsPrice extends StatelessWidget {
  const CustomTipeDetailsPrice({
    super.key,
    required this.price,
  });
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinerHorizontalGradientBackGround([kBlueColor, kYellowColor2]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              OldPriceWidget(oldPrice: 30),
              SizedBox(width: 10),
              Text(
                '$price\$',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Text(
            'Per Persone',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
