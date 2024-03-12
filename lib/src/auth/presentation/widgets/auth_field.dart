import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    required this.hintText,
    required this.textEditingController,
    this.isObscure = false,
    super.key,
  });

  final String hintText;
  final TextEditingController textEditingController;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$hintText is empty';
        }
        return null;
      },
    );
  }
}
