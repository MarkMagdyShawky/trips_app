import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/features/home/presentation/screen/widget/custom_categories_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      child: CustomCategoriesListView(),
    );
  }
}
