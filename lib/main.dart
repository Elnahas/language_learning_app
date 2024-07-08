import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_app/core/routing/app_routes.dart';
import 'package:language_learning_app/my_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp( MyApp(appRoutes: AppRoutes(),));
}

