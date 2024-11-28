import 'package:doctor_hunt/core/Constants/app_assets.dart';
import 'package:doctor_hunt/core/Constants/app_syyles.dart';
import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/core/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/core/widgets/custom_search_textfield.dart';
import 'package:doctor_hunt/features/search/presentation/widgets/card_search_page_item.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.bg,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  verticalSpace(40),
                  const CustomAppBAr(title: 'Find Doctors'),
                  verticalSpace(43),
                  const CustomSearchTextfield(),
                  verticalSpace(10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return CardSearchPagetItem();
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
