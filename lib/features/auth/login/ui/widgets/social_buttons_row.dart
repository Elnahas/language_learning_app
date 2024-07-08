import 'package:flutter/material.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/widgets/app_elevated_button.dart';

class SocialButtonsRow extends StatelessWidget {
  const SocialButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppElevatedButton(
            IconPathSvg: "assets/svgs/ic_facebook.svg",
            onPressed: () {},
            backgroundColor: AppColors.mercury,
            height: 50,
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: AppElevatedButton(
            IconPathSvg: "assets/svgs/ic_google.svg",
            onPressed: () {},
            backgroundColor: AppColors.mercury,
            height: 50,
          ),
        ),
      ],
    );
  }
}