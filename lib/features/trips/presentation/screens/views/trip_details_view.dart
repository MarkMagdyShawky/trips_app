import 'package:flutter/material.dart';
import 'package:trips_app/core/widgets/custom_app_bar.dart';
import 'package:trips_app/features/trips/presentation/screens/views/trip_details_view_body.dart';

class TripDetailsView extends StatelessWidget {
  const TripDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().customAppBar('Orange Bay'),
      body: TripDetailsViewBody(),
    );
  }
}
