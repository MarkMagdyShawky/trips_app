import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/features/home/presentation/screen/widget/custom_category_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      child: ListView(
        children: [
          CustomCategoryCard(image: ImageManager.kTestImage, catigoryName: 'Hurghada'),
          SizedBox(height: 35),
          CustomCategoryCard(image: ImageManager.kTestImage, catigoryName: 'Hurghada'),
          SizedBox(height: 35),
          CustomCategoryCard(image: ImageManager.kTestImage, catigoryName: 'Hurghada'),
          SizedBox(height: 35),
          CustomCategoryCard(image: ImageManager.kTestImage, catigoryName: 'Hurghada'),
          SizedBox(height: 35),
        ],
      ),
    );
  }
}
