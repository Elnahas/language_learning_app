import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_app/core/routing/app_routes.dart';
import 'package:language_learning_app/core/theming/app_colors.dart';

import 'core/routing/routes.dart';

class MyApp extends StatelessWidget {
  final AppRoutes appRoutes ;
  const MyApp({super.key, required this.appRoutes});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
          designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Language Learning App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
            useMaterial3: true,
          ),
          initialRoute: Routes.onBoarding,
          onGenerateRoute: appRoutes.onGenerateRoute ,

          // home: const OnBoardingScreen(),
        );
      },

    );
  }
}
