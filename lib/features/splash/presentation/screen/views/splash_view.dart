import 'package:flutter/material.dart';
import 'package:trips_app/features/splash/presentation/screen/views/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
