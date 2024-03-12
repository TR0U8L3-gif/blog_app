import 'package:blog_app/core/theme/color_palette.dart';
import 'package:blog_app/core/utils/common/presentation/widget/constrained_scaffold.dart';
import 'package:blog_app/core/utils/common/presentation/widget/ink_well_transparent.dart';
import 'package:blog_app/core/utils/constants.dart';
import 'package:blog_app/core/utils/extensions/context_extension.dart';
import 'package:blog_app/src/auth/presentation/pages/sign_in_page.dart';
import 'package:blog_app/src/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/src/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  static MaterialPageRoute<SignUpPage> route() =>
      MaterialPageRoute(builder: (context) => const SignUpPage());

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSize12),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up.',
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kSizedBoxHeight36,
              AuthField(
                hintText: 'Name',
                textEditingController: nameController,
              ),
              kSizedBoxHeight12,
              AuthField(
                hintText: 'Email',
                textEditingController: emailController,
              ),
              kSizedBoxHeight12,
              AuthField(
                hintText: 'Password',
                textEditingController: passwordController,
                isObscure: true,
              ),
              kSizedBoxHeight36,
              AuthGradientButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                text: 'Sign Up',
              ),
              kSizedBoxHeight24,
              Wrap(
                children: [
                  Text('Already have an account? ',
                    style: context.theme.textTheme.titleMedium,
                  ),
                  InkWellTransparent(
                    onTap: () => Navigator.pushReplacement(context, SignInPage.route()),
                    child: Text('Sign In',
                      style: context.theme.textTheme.titleMedium?.copyWith(
                        color: ColorPalette.gradient2,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
