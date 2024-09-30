import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';

class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(Icons.star_rate, color: kYellowColor),
          Icon(Icons.star_rate, color: kYellowColor),
          Icon(Icons.star_rate, color: kYellowColor),
          Icon(Icons.star_rate, color: kYellowColor),
          Icon(Icons.star_half, color: kYellowColor),
        ],
      ),
    );
  }
}
