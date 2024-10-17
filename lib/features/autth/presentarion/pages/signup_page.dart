import '../../../../core/Constants/color_utility.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import 'widgets/signup-page_body.dart';
import '../../../../core/Routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatelessWidget {
  static const String id = "SignUpPage";
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     GoRouter.of(context).go(AppRouter.kLoginPage);
        //   },
        //   child: const Icon(Icons.arrow_back),
        // ),

        body: const SignUpPageBody());
  }
}
