import '../../../../core/Routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  static const String id = "LoginPage";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            GoRouter.of(context).go(AppRouter.kSignUpPage);
          },
        ),
        title: Text('Login'),
        // leading: Icon(Icons.arrow_back),
      ),
    );
  }
}
