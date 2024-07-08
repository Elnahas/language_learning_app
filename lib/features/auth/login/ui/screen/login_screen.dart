import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/core/helper/spacing.dart';
import 'package:language_learning_app/core/theming/app_text_style.dart';
import 'package:language_learning_app/features/auth/login/ui/widgets/divider_dotted_line.dart';
import '../../../../../core/widgets/app_elevated_button.dart';
import '../widgets/login_form.dart';
import '../widgets/login_image_and_text.dart';
import '../widgets/social_buttons_row.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginImageAndText(),
                verticalSpace(20),
                LoginForm(),
                verticalSpace(30),
                AppElevatedButton(buttonText: "Login", onPressed: () {}),
                verticalSpace(20),
                DividerDottedLine(),
                verticalSpace(20),
                SocialButtonsRow(),
                verticalSpace(20),
                Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Not you member? ",
                        style: AppTextStyle.font17GrayDarkRegular),
                    TextSpan(
                        text: "Signup",
                        style: AppTextStyle.font17BlueMedium,
                        recognizer: TapGestureRecognizer()..onTap = () {})
                  ])),
                )
              ],
            ),
          ),
        ));
  }
}
