import 'package:go_router/go_router.dart';
import 'package:trips_app/features/home/presentation/screen/view/home_view.dart';
import 'package:trips_app/features/onboarding/presentation/screen/views/onboarding_view.dart';
import 'package:trips_app/features/splash/presentation/screen/views/splash_view.dart';
import 'package:trips_app/features/trips/presentation/screens/views/trip_details_view.dart';
import 'package:trips_app/features/trips/presentation/screens/views/trips_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: RoutesNames.kOnboardingView,
      builder: (context, state) => OnboardingView(),
    ),
    GoRoute(
      path: RoutesNames.kHomeView,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: RoutesNames.kTripsView,
      builder: (context, state) => TripsView(),
    ),
    GoRoute(
      path: RoutesNames.kTripsDetailsView,
      builder: (context, state) => TripDetailsView(),
    ),
  ]);
}

class RoutesNames {
  static const String kSplashView = "/Splash";
  static const String kOnboardingView = "/Onboarding";
  static const String kHomeView = "/Home";
  static const String kTripsView = "/Trpis";
  static const String kTripsDetailsView = "/TrpisDetails";
}
