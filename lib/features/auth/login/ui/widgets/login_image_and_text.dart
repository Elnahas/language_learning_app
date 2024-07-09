import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/app_text_style.dart';

class LoginImageAndText extends StatelessWidget {
  const LoginImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            width: 105.w,
            height: 82.h,
          ),
          verticalSpace(10),
          Text(
            "For free, join now and\n start learning",
            style: AppTextStyle.font22DarkMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
