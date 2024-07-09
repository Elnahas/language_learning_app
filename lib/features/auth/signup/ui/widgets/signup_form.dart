import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObscureText = true;
  bool isObscureTextConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                labelText: "First Name",
                hintText: "Enter Your First Name",
              ),
            ),
            horizontalSpace(10),
            Expanded(
              child: AppTextFormField(
                labelText: "Last Name",
                hintText: "Enter Your Last Name",
              ),
            ),
          ],
        ),
        verticalSpace(20),
        const AppTextFormField(
          labelText: "Email Address",
          hintText: "Enter Your Email Address",
        ),
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
                ? const FaIcon(FontAwesomeIcons.eye)
                : const FaIcon(FontAwesomeIcons.eyeSlash),
            iconSize: 16,
          ),
        ),
        verticalSpace(20),
        AppTextFormField(
          labelText: "Confirm Password",
          hintText: "Confirm Your Password",
          obscureText: isObscureTextConfirm,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureTextConfirm = !isObscureTextConfirm;
              });
            },
            icon: isObscureTextConfirm
                ? const FaIcon(FontAwesomeIcons.eye)
                : const FaIcon(FontAwesomeIcons.eyeSlash),
            iconSize: 16,
          ),
        ),
      

      ],
    );
  }
}