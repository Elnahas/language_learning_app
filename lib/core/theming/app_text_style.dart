import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_learning_app/core/theming/app_colors.dart';

import '../helper/font_weight_helper.dart';

abstract class AppTextStyle {

  static TextStyle get font22DarkMedium => GoogleFonts.fredoka(
      color: AppColors.dark,
      fontSize: 22.sp,
      fontWeight: FontWeightHelper.medium);

        static TextStyle get font15DarkMedium => GoogleFonts.fredoka(
      color: AppColors.dark,
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium);

              static TextStyle get font15DarkRegular => GoogleFonts.fredoka(
      color: AppColors.dark,
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.regular);

        static TextStyle get font15GrayDark50Medium => GoogleFonts.fredoka(
      color: AppColors.grayDark.withOpacity(0.5),
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium);

  static TextStyle get font15Dark60Regular => GoogleFonts.fredoka(
      color: AppColors.dark60,
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.regular);

  static TextStyle get font20WhiteMedium => GoogleFonts.fredoka(
      color: AppColors.white,
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.medium);
}
