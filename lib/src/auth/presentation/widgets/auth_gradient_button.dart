import 'package:blog_app/core/theme/color_palette.dart';
import 'package:blog_app/core/utils/constants.dart';
import 'package:blog_app/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(kSize12);
    
    return InkWell(
      onTap: () {},
      borderRadius: borderRadius,
      child: Ink(
        width: context.width,
        height: kButtonSizeMedium,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              ColorPalette.gradient1,
              ColorPalette.gradient2,
              ColorPalette.gradient3,
            ],
          ),
          borderRadius: borderRadius,
        ),
        child: const Align(
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: kFontSizeLarge,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
