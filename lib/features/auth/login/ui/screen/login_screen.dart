import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_app/core/helper/spacing.dart';
import 'package:language_learning_app/core/theming/app_text_style.dart';
 import '../../../../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),

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
                AppTextFormField(labelText: "Email Address", hintText: "Enter Your Email"),
                verticalSpace(20),
                AppTextFormField(labelText: "Password", hintText: "Enter Your Password"),
              ],
            ),
          ),
        ));
  }
}
