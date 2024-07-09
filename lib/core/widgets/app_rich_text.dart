import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../theming/app_text_style.dart';

class AppRichText extends StatelessWidget {
  final String mainText;
  final String actionText;
  final Function()? onTap;

  const AppRichText(
      {super.key,
      required this.mainText,
      required this.actionText,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(text: mainText, style: AppTextStyle.font17GrayDarkRegular),
        TextSpan(
            text: actionText,
            style: AppTextStyle.font17BlueMedium,
            recognizer: TapGestureRecognizer()..onTap = onTap)
      ])),
    );
  }
}
