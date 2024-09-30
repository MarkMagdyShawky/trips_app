import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/utils/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kWhiteColor),
      routerConfig: AppRouter.router,
    );
  }
}
