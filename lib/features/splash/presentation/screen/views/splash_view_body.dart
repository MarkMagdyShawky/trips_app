import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trips_app/core/functions/gradient_functions.dart';
import 'package:trips_app/core/resources/app_router.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/pageDimensions.dart';
import 'package:trips_app/features/splash/presentation/screen/widgets/custom_logo_widget.dart';
import 'package:trips_app/features/splash/presentation/screen/widgets/sliding_text_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    slidingAnimationHelper();
    navigateHome();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: BoxDecoration(
        gradient: LinearCenterGradientbackground([kWhiteColor, kBlueColor]),
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const CustomSLogoWidget(),
            SlidingTextAnimation(slidingAnimation: slidingAnimation),
          ],
        ),
      ),
    );
  }

  void slidingAnimationHelper() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset(0, -1)).animate(animationController);
    animationController.forward();
  }

  void navigateHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(RoutesNames.kOnboardingView);
      },
    );
  }
}
