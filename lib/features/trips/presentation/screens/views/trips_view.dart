import 'package:flutter/material.dart';
import 'package:trips_app/core/widgets/custom_app_bar.dart';
import 'package:trips_app/core/widgets/custom_drawer.dart';
import 'package:trips_app/features/trips/presentation/screens/views/trips_view_body.dart';

class TripsView extends StatelessWidget {
  const TripsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().customAppBar('Hurghada Trips'),
      drawer: CustomDrawer(),
      body: TripsViewBody(),
    );
  }
}
