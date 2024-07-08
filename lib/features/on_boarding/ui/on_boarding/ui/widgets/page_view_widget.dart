
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_app/features/on_boarding/ui/on_boarding/ui/widgets/on_boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../data/on_boarding_model.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          PageView.builder(
            physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => OnBoardingItem(
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
    );
  }
}

