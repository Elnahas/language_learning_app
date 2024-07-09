import 'package:flutter/material.dart';
import 'package:language_learning_app/core/helper/extentions.dart';
import 'package:language_learning_app/core/helper/spacing.dart';
import 'package:language_learning_app/core/routing/routes.dart';
import 'package:language_learning_app/core/widgets/app_elevated_button.dart';
import 'package:language_learning_app/core/widgets/app_rich_text.dart';

import '../widgets/page_view_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              verticalSpace(100),
              PageViewWidget(controller: controller),
              verticalSpace(50),
              AppElevatedButton(buttonText: "Chose a Language", onPressed: () {}),
              verticalSpace(30),
              AppRichText(
                mainText: "Already have an account? ",
                actionText: "Log In",
                onTap: () {
                  context.pushNamed(Routes.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
