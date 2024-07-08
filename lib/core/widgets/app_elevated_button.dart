import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_style.dart';

class AppElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final String? buttonText;
  final String? IconPathSvg;
  final Color? backgroundColor;
  final double? width, height, borderRadius;
  final TextStyle? style;

  const AppElevatedButton(
      {super.key,
      this.onPressed,
      this.buttonText,
      this.backgroundColor,
      this.width,
      this.height,
      this.borderRadius,
      this.style, this.IconPathSvg});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: IconPathSvg != null
          ? SvgPicture.asset(IconPathSvg!)
          : Text(buttonText!, style: style ?? AppTextStyle.font20WhiteMedium),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width  ?? double.infinity, height ?? 56.w),
        backgroundColor: backgroundColor ?? AppColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
        ),
      ),
    );
  }
}
