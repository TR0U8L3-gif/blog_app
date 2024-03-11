import 'package:blog_app/core/theme/color_palette.dart';
import 'package:blog_app/core/utils/constants.dart';
import 'package:blog_app/core/utils/extensions/context_extension.dart';
import 'package:blog_app/src/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/src/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          child: SizedBox(
            width: kAppWidthMax,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSize12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sign Up.',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kSizedBoxHeight36,
                  const AuthField(hintText: 'Name'),
                  kSizedBoxHeight12,
                  const AuthField(hintText: 'Email'),
                  kSizedBoxHeight12,
                  const AuthField(hintText: 'Password'),
                  kSizedBoxHeight36,
                  const AuthGradientButton(),
                  kSizedBoxHeight24,
                  GestureDetector(
                    onTap: () {
                      // TODO(SignIn): already have an account? sign in.
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: context.theme.textTheme.titleMedium,
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: context.theme.textTheme.titleMedium?.copyWith(
                              color: ColorPalette.gradient2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
