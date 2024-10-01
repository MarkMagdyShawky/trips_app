import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';

class CustomImagesSlider extends StatelessWidget {
  const CustomImagesSlider({
    super.key,
    required this.sliderImages,
  });
  final List<String> sliderImages;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: sliderImages.map(
        (imagePath) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: PageDimensions().pageHeight(context) / 4,
        autoPlayCurve: Curves.easeInOut,
        animateToClosest: true,
        autoPlay: true,
        pauseAutoPlayOnTouch: true,
        enlargeCenterPage: true,
        pageSnapping: true,
        scrollPhysics: ClampingScrollPhysics(),
        initialPage: 2,
      ),
    );
  }
}
