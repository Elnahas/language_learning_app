import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:language_learning_app/core/helper/spacing.dart';
import 'package:language_learning_app/core/theming/app_colors.dart';
import 'package:language_learning_app/core/theming/app_text_style.dart';
import 'package:language_learning_app/features/auth/login/ui/widgets/divider_dotted_line.dart';
import '../../../../../core/widgets/app_elevated_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;
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
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/login.png",
                    width: 105.w,
                    height: 82.h,
                  ),
                ),
                verticalSpace(10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "For free, join now and\n start learning",
                    style: AppTextStyle.font22DarkMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(20),
                AppTextFormField(
                    labelText: "Email Address", hintText: "Enter Your Email"),
                verticalSpace(20),
                AppTextFormField(
                  labelText: "Password",
                  hintText: "Enter Your Password",
                  obscureText: isObscureText,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscureText = !isObscureText;
                      });
                    },
                    icon: isObscureText
                        ? FaIcon(FontAwesomeIcons.eye)
                        : FaIcon(FontAwesomeIcons.eyeSlash),
                    iconSize: 16,
                  ),
                ),
                verticalSpace(15),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forgot Password",
                        style: AppTextStyle.font15RedRegular,
                      )),
                ),
                verticalSpace(30),
                AppElevatedButton(buttonText: "Login", onPressed: () {}),
                verticalSpace(20),
                DividerDottedLine(),
                verticalSpace(20),
                Row(
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
                ),
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
