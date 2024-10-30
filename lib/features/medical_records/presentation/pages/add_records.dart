import 'package:doctor_hunt/core/Constants/app_assets.dart';
import 'package:doctor_hunt/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AddRecordsPage extends StatelessWidget {
  const AddRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.bg),
                fit: BoxFit.cover,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Column(children: [
                CustomAppBAr(title: 'Add Records'),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
