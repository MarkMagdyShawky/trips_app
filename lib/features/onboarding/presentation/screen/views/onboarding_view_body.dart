import 'package:flutter/material.dart';
import 'package:trips_app/core/functions/gradient_functions.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/features/onboarding/presentation/screen/widget/custom_button.dart';
import 'package:trips_app/features/onboarding/presentation/screen/widget/custom_info_widget.dart';
import 'package:trips_app/features/onboarding/presentation/screen/widget/custom_rich_text_widget.dart';
import 'package:trips_app/features/splash/presentation/screen/widgets/custom_logo_widget.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearCenterGradientbackground([kWhiteColor, kBlueColor]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            CustomRichTexrWidget(),
            CustomSLogoWidget(),
            CustomInofWidget(
              image: ImageManager.kTravellingIcon,
              text: 'Don\'t let your busy schedule stop you from enjoying',
            ),
            SizedBox(height: 30),
            CustomInofWidget(
              image: ImageManager.kCalenderIcon,
              text: 'Explore Egypt with amazing tours and trips',
            ),
            SizedBox(height: 30),
            CustomInofWidget(
              image: ImageManager.kBeachIcon,
              text:
                  'Egypt has something for everyone,whether you are looking for relaxation, adventure, culture, or entertainment.',
            ),
            SizedBox(height: 70),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
