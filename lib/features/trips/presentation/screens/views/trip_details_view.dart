import 'package:flutter/material.dart';
import 'package:trips_app/features/trips/presentation/screens/views/trip_details_view_body.dart';

class TripDetailsView extends StatelessWidget {
  const TripDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TripDetailsViewBody(),
    );
  }
}
