import 'package:blog_app/src/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

import 'core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const SignUpPage(),
    );
  }
}
