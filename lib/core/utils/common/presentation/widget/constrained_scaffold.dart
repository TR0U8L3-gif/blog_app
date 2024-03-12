import 'package:blog_app/core/utils/extensions/context_extension.dart';
import 'package:blog_app/core/utils/helpers/width_calculator.dart';
import 'package:flutter/material.dart';
class ConstrainedScaffold extends StatelessWidget {
  const ConstrainedScaffold({required this.body, super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          child: OverflowBox(
            maxWidth: SizeCalculator.width(context.width),
            child: body,
          ),
        ),
      ),
    );
  }
}
