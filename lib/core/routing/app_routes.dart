import 'package:flutter/material.dart';
import 'package:language_learning_app/core/routing/routes.dart';
import 'package:language_learning_app/features/auth/signup/ui/screen/signup_screen.dart';

import '../../features/auth/login/ui/screen/login_screen.dart';
import '../../features/on_boarding/ui/on_boarding/ui/screen/on_boarding_screen.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
              case Routes.signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      default:
        return null;
    }
  }
}
