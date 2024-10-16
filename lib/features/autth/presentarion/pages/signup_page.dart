import 'package:doctor_hunt/core/Constants/color_utility.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/widgets/signup-page_body.dart';
import 'package:doctor_hunt/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatelessWidget {
  static const String id = "SignUpPage";
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            GoRouter.of(context).go(AppRouter.kLoginPage);
          },
          child: const Icon(Icons.arrow_back),
        ),
        body: const SignUpPageBody());
  }
}
