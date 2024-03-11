import 'dart:math';

import 'package:blog_app/core/utils/constants.dart';
import 'package:blog_app/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: context.width < kButtonMaxWidth
            ? Size(context.width, context.width * kButtonRatio)
            : const Size(kButtonMaxWidth, kButtonMaxHeight),
      ),
      child: Text('Elo'),
    );
  }
}
