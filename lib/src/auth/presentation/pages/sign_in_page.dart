import 'package:blog_app/core/theme/color_palette.dart';
import 'package:blog_app/core/utils/common/presentation/widget/constrained_scaffold.dart';
import 'package:blog_app/core/utils/common/presentation/widget/ink_well_transparent.dart';
import 'package:blog_app/core/utils/constants.dart';
import 'package:blog_app/core/utils/extensions/context_extension.dart';
import 'package:blog_app/src/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/src/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static MaterialPageRoute<SignInPage> route() =>
      MaterialPageRoute(builder: (context) => const SignInPage());

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
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
                'Sign In.',
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kSizedBoxHeight36,
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
                text: 'Sign In',
              ),
              kSizedBoxHeight24,
              Wrap(
                children: [
                  Text("Don't have an account? ",
                    style: context.theme.textTheme.titleMedium,
                  ),
                  InkWellTransparent(
                    onTap: () => Navigator.pushReplacement(context, SignInPage.route()),
                    child: Text('Sign Up',
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
