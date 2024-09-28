import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trips_app/core/resources/image_manager.dart';

class CustomSplashViewLogo extends StatelessWidget {
  const CustomSplashViewLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ImageManager.kAppLogo,
      width: 200,
      height: 200,
    );
  }
}
