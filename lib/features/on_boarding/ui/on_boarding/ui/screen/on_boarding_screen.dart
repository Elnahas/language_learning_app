import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_app/core/helper/spacing.dart';
import 'package:language_learning_app/core/theming/app_colors.dart';
import 'package:language_learning_app/core/theming/app_text_style.dart';

import '../widgets/page_view_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(100),
            PageViewWidget(controller: controller),
            verticalSpace(50),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Chose a Language",
                  style: AppTextStyle.font20WhiteMedium,
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    backgroundColor: AppColors.blue),
              ),
            ),
            verticalSpace(30),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Already have an account? ",
                  style: AppTextStyle.font15Dark60Regular),
              TextSpan(text: "Log In", style: AppTextStyle.font15DarkMedium)
            ])),
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
