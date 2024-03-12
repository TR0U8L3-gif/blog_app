import 'package:flutter/material.dart';

class InkWellTransparent extends StatelessWidget {
  const InkWellTransparent({
    required this.onTap,
    required this.child,
    super.key,
  });

  final Widget child;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: child,
    );
  }
}
