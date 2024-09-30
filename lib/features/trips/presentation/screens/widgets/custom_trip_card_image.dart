import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';

class CustomTripCardImage extends StatelessWidget {
  const CustomTripCardImage({
    super.key,
    required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PageDimensions().pageHeight(context) * 0.20,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
