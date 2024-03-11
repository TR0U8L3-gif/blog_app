import 'package:blog_app/core/utils/constants.dart';
import 'package:blog_app/src/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

import '../widgets/auth_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kSize12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kSizedBoxHeight36,
              AuthField(hintText: 'Name'),
              kSizedBoxHeight12,
              AuthField(hintText: 'Email'),
              kSizedBoxHeight12,
              AuthField(hintText: 'Password'),
              kSizedBoxHeight36,
              AuthGradientButton()
            ],
          ),
        ),
      ),
    );
  }
}
