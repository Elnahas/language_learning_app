import 'package:flutter/material.dart';
import 'package:language_learning_app/core/theming/app_text_style.dart';

class AppLabelText extends StatelessWidget {
  final String labelText;
  const AppLabelText({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: AppTextStyle.font15DarkRegular,
    );
  }
}
