import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppTextFormField(
          labelText: "Email Address",
          hintText: "Enter Your Email",
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
        verticalSpace(15),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: GestureDetector(
            onTap: () {},
            child: const Text(
              "Forgot Password",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}