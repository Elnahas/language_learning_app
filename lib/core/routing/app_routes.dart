import 'package:flutter/material.dart';
import 'package:language_learning_app/core/routing/routes.dart';

import '../../features/auth/login/ui/screen/login_screen.dart';
import '../../features/on_boarding/ui/on_boarding/ui/screen/on_boarding_screen.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return null;
    }
  }
}
