import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_style.dart';

class AppElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;
  final Color? backgroundColor;
  final double? width, height, borderRadius;
  final TextStyle? style ;

  const AppElevatedButton(
      {super.key,
      this.onPressed,
      required this.buttonText,
      this.backgroundColor,
      this.width,
      this.height,
      this.borderRadius, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText, style: style ?? AppTextStyle.font20WhiteMedium),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(height ?? double.infinity, width ?? 56.w),
        backgroundColor: backgroundColor ?? AppColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
        ),
      ),
    );
  }
}
