import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/app_text_style.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem(
      {super.key,
      required this.controller,
      required this.imagePath,
      required this.title,
      required this.subTitle});

  final PageController controller;
  final String imagePath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 220.h,
            width: 240.w,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          verticalSpace(150),
          Text(
            title,
            style: AppTextStyle.font22DarkMedium,
          ),
          verticalSpace(10),
          Text(
            subTitle,
            style: AppTextStyle.font15Dark60Regular,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
