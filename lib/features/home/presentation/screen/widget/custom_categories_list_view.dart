import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/utils/app_router.dart';
import 'package:trips_app/features/home/presentation/screen/widget/custom_category_card.dart';

class CustomCategoriesListView extends StatelessWidget {
  const CustomCategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            GoRouter.of(context).push(RoutesNames.kTripsView);
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: CustomCategoryCard(image: ImageManager.kTestImage, catigoryName: 'Hurghada'),
          ),
        );
      },
    );
  }
}
