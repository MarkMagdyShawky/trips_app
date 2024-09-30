import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/styles.dart';
import 'package:trips_app/core/widgets/custom_app_bar.dart';
import 'package:trips_app/features/home/presentation/screen/view/home_view_body.dart';
import 'package:trips_app/core/widgets/custom_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().customAppBar('Categories'),
      drawer: CustomDrawer(),
      body: HomeViewBody(),
    );
  }
}
