import 'package:flutter/material.dart';
import 'package:language_learning_app/core/helper/spacing.dart';
import 'package:language_learning_app/core/widgets/app_label_text.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_style.dart';

class AppTextFormField extends StatelessWidget {
  final String labelText;
  final bool? obscureText;
  final String hintText;
  final double? borderRadius;
  final Color? fillColor;
  final Color? borderColor;
  final Widget? suffixIcon;

  const AppTextFormField(
      {super.key,
      required this.labelText,
      required this.hintText,
      this.borderRadius,
      this.fillColor,
      this.borderColor,
      this.obscureText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabelText(labelText: labelText),
        verticalSpace(5),
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
              borderSide: BorderSide(
                color: borderColor ?? Colors.transparent,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
              borderSide: BorderSide(
                color: borderColor ?? Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
              borderSide: BorderSide(
                color: borderColor ?? AppColors.primaryColor,
              ),
            ),
            filled: true,
            fillColor: fillColor ?? AppColors.dark.withOpacity(0.05),
            hintText: hintText,
            hintStyle: AppTextStyle.font15GrayDark50Regular,
          ),
          obscureText: obscureText ?? false,
        )
      ],
    );
  }
}
