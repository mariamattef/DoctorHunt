import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const String id = "LoginPage";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Login'),
        // leading: Icon(Icons.arrow_back),
      ),
    );
  }
}
