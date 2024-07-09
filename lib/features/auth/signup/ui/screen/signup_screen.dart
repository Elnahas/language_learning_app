import 'package:flutter/material.dart';
import 'package:language_learning_app/core/helper/extentions.dart';
import 'package:language_learning_app/core/helper/spacing.dart';
import 'package:language_learning_app/features/auth/login/ui/widgets/divider_dotted_line.dart';
import 'package:language_learning_app/features/auth/signup/ui/widgets/signup_form.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/app_elevated_button.dart';
import '../../../../../core/widgets/app_rich_text.dart';
import '../../../login/ui/widgets/social_buttons_row.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Signup")),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Create an Account",
                    style: AppTextStyle.font22DarkMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(20),
                SignupForm(),
                verticalSpace(30),
                AppElevatedButton(buttonText: "Signup", onPressed: () {}),
                verticalSpace(20),
                DividerDottedLine(),
                verticalSpace(20),
                SocialButtonsRow(),
                verticalSpace(30),
                AppRichText(
                    mainText: "Already you member? ",
                    actionText: "Login",
                    onTap: () {
                      context.pushNamed(Routes.login);
                    }),
              ],
            ),
          ),
        ));
  }
}
