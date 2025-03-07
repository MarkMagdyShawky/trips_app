import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/utils/app_router.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_trip_card.dart';

class TripsViewBody extends StatelessWidget {
  const TripsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(RoutesNames.kTripsDetailsView);
            },
            child: CustomTripCard(
              image: ImageManager.kTestImage,
              tripName: 'El Marina',
              trpiInfo:
                  'Go to the Red Sea for an initiation to diving. It is impossible to go through Egypt and miss this activity. Indeed, the Red Sea is an excellent destination for beginners & experienced divers .',
              oldPrice: 40,
              currenPrice: 30,
            ),
          ),
        );
      },
    );
  }
}
