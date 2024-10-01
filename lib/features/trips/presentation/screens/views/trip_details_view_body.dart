import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/core/resources/styles.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_images_slider.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_trip_details_app_bar.dart';

class TripDetailsViewBody extends StatelessWidget {
  const TripDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CustomTripDetailsAppBar(title: 'Scoba Divings'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                CustomImagesSlider(
                  sliderImages: [ImageManager.kTestImage, ImageManager.kTestImage, ImageManager.kTestImage],
                ),
                SizedBox(height: 30),
                Text(
                  'Trip Description',
                  style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  'Go to the Red Sea for an initiation to diving. It is impossible to go through Egypt and miss this activity. Indeed, the Red Sea is an excellent destination for beginners and experienced divers. It shelters a tropical paradise recognized throughout the world, as much by its multicolored coral gardens but also through its diversified',
                  style: Styles.textStyle16,
                  textAlign: TextAlign.justify,
                ),
                //
                SizedBox(height: 30),
                Text(
                  'Highlights',
                  style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  'Included/Excluded\n- Roundtrip transportation from your hotel\n- Guide francophone\n- Diving equipment\n- Kit de snorkelling\n- Meals and drinks, unlimited service\n- 2 dives between 6 and 10 meters',
                  style: Styles.textStyle16,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
