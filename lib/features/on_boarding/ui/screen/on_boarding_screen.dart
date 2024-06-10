import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_app/core/helper/spacing.dart';
import 'package:language_learning_app/core/theming/app_colors.dart';
import 'package:language_learning_app/core/theming/app_text_style.dart';
import 'package:language_learning_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => buildPage(
                          controller: controller,
                          imagePath:
                              OnBoardingModel.onBoardingList[index].imagePath,
                          title: OnBoardingModel.onBoardingList[index].title,
                          subTitle:
                              OnBoardingModel.onBoardingList[index].subTitle),
                      controller: controller,
                      itemCount: OnBoardingModel.onBoardingList.length),
                  Positioned(
                      bottom: 170.h,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect: WormEffect(
                              activeDotColor: AppColors.orange,
                              dotWidth: 10.w,
                              dotHeight: 10.w,
                            ),
                            onDotClicked: (index) {}),
                      ))
                ],
              ),
            ),
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
            ])) , 
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}

class buildPage extends StatelessWidget {
  const buildPage({
    super.key,
    required this.controller,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

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
