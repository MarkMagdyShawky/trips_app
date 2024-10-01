import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/core/resources/styles.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_descrip_hights_details.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_images_slider.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_offer_box.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_subdetails_box.dart';
import 'package:trips_app/features/trips/presentation/screens/widgets/custom_tipe_details_price.dart';

class TripDetailsViewBody extends StatelessWidget {
  const TripDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(
          image: AssetImage(ImageManager.kTestImage2),
          height: PageDimensions().pageHeight(context) / 3,
          fit: BoxFit.cover,
        ),
        CustomTipeDetailsPrice(price: 24),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Orange Bay (Hurghada Trip)',
            style: Styles.textStyle24,
          ),
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomOfferBox(offer: 15),
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomSubDetailsBox(
            time: '6 hours',
            date: 'All Months',
            age: 1,
            availability: 20,
            price: 30,
          ),
        ),
        SizedBox(height: 40),
        CustomImagesSlider(
          sliderImages: [
            ImageManager.kTestImage,
            ImageManager.kTestImage2,
            ImageManager.kTestImage,
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomDescripHightsDetails(
            description:
                'Go to the Red Sea for an initiation to diving. It is impossible to go through Egypt and miss this activity. Indeed, the Red Sea is an excellent destination for beginners and experienced divers. It shelters a tropical paradise recognized throughout the world, as much by its multicolored coral gardens but also through its diversified',
            highlights:
                'Go to the Red Sea for an initiation to diving. It is impossible to go through Egypt and miss this activity. Indeed, the Red Sea is an excellent destination for beginners and experienced divers. It shelters a tropical paradise recognized throughout the world, as much by its multicolored coral gardens but also through its diversified',
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
