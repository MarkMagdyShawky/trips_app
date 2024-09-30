import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/core/resources/styles.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_price_widget.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_rating_widget.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_trip_card_image.dart';

class CustomTripCard extends StatelessWidget {
  const CustomTripCard({
    super.key,
    required this.image,
    required this.tripName,
    required this.trpiInfo,
    required this.oldPrice,
    required this.currenPrice,
  });
  final String image;
  final String tripName;
  final String trpiInfo;
  final double oldPrice;
  final double currenPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context) / 2,
      decoration: BoxDecoration(
        color: kWhiteColor2.withOpacity(0.2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTripCardImage(image: image),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Text(
              tripName,
              style: Styles.textStyle20.copyWith(fontFamily: 'Bangers'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              trpiInfo,
              style: Styles.textStyle16,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomPriceWidget(oldPrice: oldPrice, currentPrice: currenPrice),
                CustomRatingWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
